#ifndef PRODUCER_H
#define PRODUCER_H

#include <producer.h> 
#include <stdint.h>

#define BROKER "127.0.0.1"
#define PORT 1883
#define TOPIC "vishal/poc/mqtt/bms/"
#define DEVICE "d_01"
#define PUB_CLIENT "pub_d_01"
#define PARAM_B 5
#define PARAM_A 80
#define NO_OF_RECORDS 100

void on_connect(struct mqtt_client *client, void **state);
struct mqtt_client* connect_mqtt();
void publish(struct mqtt_client *client);
void generate_device_data_proto(char **msg, int *len);

#endif // MQTT_PUBLISHER_H
