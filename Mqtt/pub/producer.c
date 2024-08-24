#include "producer.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include "device_data.pb-c.h" // Protobuf-C generated file

void on_connect(struct mqtt_client *client, void **state) {
    printf("PUBLISHER | Connected to MQTT Broker!\n");
}

struct mqtt_client* connect_mqtt() {
    struct mqtt_client *client = mqtt_client_new();
    mqtt_client_connect(client, BROKER, PORT, on_connect);
    return client;
}

void publish(struct mqtt_client *client) {
    int msg_count = 1;
    char device_topic[256];
    snprintf(device_topic, sizeof(device_topic), "%s%s", TOPIC, DEVICE);

    while (1) {
        usleep(2000000); // sleep for 2 seconds
        char *msg;
        int len;
        generate_device_data_proto(&msg, &len);
        mqtt_client_publish(client, device_topic, msg, len, 1);

        printf("PUBLISHER | Sent `%s` to topic `%s`\n", msg, device_topic);

        free(msg); // Free the message after sending

        msg_count++;
        if (msg_count > NO_OF_RECORDS) {
            break;
        }
    }
}

void generate_device_data_proto(char **msg, int *len) {
    DeviceData device_data = DEVICE_DATA__INIT;

    device_data.deviceid = DEVICE;
    device_data.soc = rand() % (PARAM_A - PARAM_B + 1);

    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    device_data.timestamp = (int64_t)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;

    *len = device_data__get_packed_size(&device_data);
    *msg = malloc(*len);
    device_data__pack(&device_data, (uint8_t *)*msg);
}
