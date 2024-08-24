#ifndef MQTT_CLIENT_H
#define MQTT_CLIENT_H

// #include <MQTTClient.h>

#define QOS 1
#define TIMEOUT 10000L

typedef struct {
    char *address;
    char *client_id;
    char *username;
    char *password;
} mqtt_client_config_t;

typedef struct {
    MQTTClient client;
    mqtt_client_config_t config;
} mqtt_client_t;

mqtt_client_t* mqtt_client_init(const char *address, const char *client_id);
void mqtt_client_connect(mqtt_client_t *mqtt_client);
void mqtt_client_disconnect(mqtt_client_t *mqtt_client);
void mqtt_client_publish(mqtt_client_t *mqtt_client, const char *topic, const char *payload);
void mqtt_client_subscribe(mqtt_client_t *mqtt_client, const char *topic, void (*message_handler)(char*, char*));

#endif // MQTT_CLIENT_H