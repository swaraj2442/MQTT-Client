#ifndef SUBSCRIBER_H
#define SUBSCRIBER_H

#include <mqtt_client.h> // Assuming this is your MQTT client library
#include <rdkafka.h>     // Kafka client library
#include <stdint.h>

// MQTT Configuration
#define MQTT_BROKER "127.0.0.1"
#define MQTT_PORT 1883
#define MQTT_TOPIC "swaraj/poc/telemetry/d1"
#define DEVICE "d_01"
#define SUB_CLIENT "sub_d_01"

// Kafka Configuration
#define KAFKA_BROKERS "localhost:9092"
#define LOCATION_SOURCE_DATA_TOPIC "device.data.source.v1"

void on_connect(struct mqtt_client *client, void **state);
struct mqtt_client* connect_mqtt();
void subscribe(struct mqtt_client *client);
void on_message(struct mqtt_client *client, void *userdata, const struct mqtt_message *msg);
void push_data_kq(rd_kafka_t *rk, rd_kafka_topic_t *rkt, const char *data);
rd_kafka_t* connect_kafka(rd_kafka_topic_t **rkt);

#endif // MQTT_SUBSCRIBER_H
