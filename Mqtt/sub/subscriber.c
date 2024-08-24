#include "mqtt_subscriber.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include "device_data.pb-c.h" // Protobuf-C generated file

void on_connect(struct mqtt_client *client, void **state) {
    printf("SUBSCRIBER | Connected to MQTT Broker!\n");
}

struct mqtt_client* connect_mqtt() {
    struct mqtt_client *client = mqtt_client_new();
    mqtt_client_connect(client, MQTT_BROKER, MQTT_PORT, on_connect);
    return client;
}

void subscribe(struct mqtt_client *client) {
    char device_topic[256];
    snprintf(device_topic, sizeof(device_topic), "%s%s", MQTT_TOPIC, DEVICE);

    printf("SUBSCRIBER | Subscribing to topic - %s\n", device_topic);
    mqtt_client_subscribe(client, device_topic, 1);
}

void on_message(struct mqtt_client *client, void *userdata, const struct mqtt_message *msg) {
    rd_kafka_t *rk = (rd_kafka_t *)userdata;
    rd_kafka_topic_t *rkt = (rd_kafka_topic_t *)msg->payload;

    printf("SUBSCRIBER | Received data at `%s` topic\n", msg->topic);
    DeviceData device_data = DEVICE_DATA__INIT;
    device_data__unpack(NULL, msg->payloadlen, msg->payload);

    char device_data_json[512];
    snprintf(device_data_json, sizeof(device_data_json),
             "{\"deviceId\":\"%s\",\"soc\":%d,\"timestamp\":%ld}",
             device_data.deviceid, device_data.soc, device_data.timestamp);

    push_data_kq(rk, rkt, device_data_json);
    printf("SUBSCRIBER | Received `%s`\n", device_data_json);

    device_data__free_unpacked(&device_data, NULL);
}

void push_data_kq(rd_kafka_t *rk, rd_kafka_topic_t *rkt, const char *data) {
    rd_kafka_produce(rkt, RD_KAFKA_PARTITION_UA, RD_KAFKA_MSG_F_COPY, (void *)data, strlen(data), NULL, 0, NULL);
    rd_kafka_poll(rk, 0);
}

rd_kafka_t* connect_kafka(rd_kafka_topic_t **rkt) {
    char errstr[512];
    rd_kafka_conf_t *conf = rd_kafka_conf_new();

    rd_kafka_t *rk = rd_kafka_new(RD_KAFKA_PRODUCER, conf, errstr, sizeof(errstr));
    if (!rk) {
        fprintf(stderr, "%% Failed to create new producer: %s\n", errstr);
        exit(1);
    }

    rd_kafka_brokers_add(rk, KAFKA_BROKERS);
    *rkt = rd_kafka_topic_new(rk, LOCATION_SOURCE_DATA_TOPIC, NULL);

    return rk;
}
