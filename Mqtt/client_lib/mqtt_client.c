#include "mqtt_client.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

mqtt_client_t* mqtt_client_init(const char *address, const char *client_id) {
    mqtt_client_t *mqtt_client = (mqtt_client_t*)malloc(sizeof(mqtt_client_t));
    mqtt_client->config.address = strdup(address);
    mqtt_client->config.client_id = strdup(client_id);
    mqtt_client->config.username = NULL;
    mqtt_client->config.password = NULL;

    MQTTClient_create(&mqtt_client->client, mqtt_client->config.address, mqtt_client->config.client_id,
                      MQTTCLIENT_PERSISTENCE_NONE, NULL);
    
    return mqtt_client;
}

void mqtt_client_connect(mqtt_client_t *mqtt_client) {
    MQTTClient_connectOptions conn_opts = MQTTClient_connectOptions_initializer;
    conn_opts.keepAliveInterval = 20;
    conn_opts.cleansession = 1;
    
    if (mqtt_client->config.username) {
        conn_opts.username = mqtt_client->config.username;
        conn_opts.password = mqtt_client->config.password;
    }
    
    int rc = MQTTClient_connect(mqtt_client->client, &conn_opts);
    if (rc != MQTTCLIENT_SUCCESS) {
        printf("Failed to connect, return code %d\n", rc);
        exit(EXIT_FAILURE);
    }
    printf("Connected to MQTT broker at %s\n", mqtt_client->config.address);
}

void mqtt_client_disconnect(mqtt_client_t *mqtt_client) {
    MQTTClient_disconnect(mqtt_client->client, 10000);
    MQTTClient_destroy(&mqtt_client->client);
    printf("Disconnected from MQTT broker\n");

    free(mqtt_client->config.address);
    free(mqtt_client->config.client_id);
    if (mqtt_client->config.username) free(mqtt_client->config.username);
    if (mqtt_client->config.password) free(mqtt_client->config.password);
    free(mqtt_client);
}

void mqtt_client_publish(mqtt_client_t *mqtt_client, const char *topic, const char *payload) {
    MQTTClient_message pubmsg = MQTTClient_message_initializer;
    pubmsg.payload = (void*)payload;
    pubmsg.payloadlen = strlen(payload);
    pubmsg.qos = QOS;
    pubmsg.retained = 0;

    MQTTClient_deliveryToken token;
    MQTTClient_publishMessage(mqtt_client->client, topic, &pubmsg, &token);
    int rc = MQTTClient_waitForCompletion(mqtt_client->client, token, TIMEOUT);
    printf("Message with delivery token %d delivered\n", token);
}

void mqtt_client_subscribe(mqtt_client_t *mqtt_client, const char *topic, void (*message_handler)(char*, char*)) {
    MQTTClient_setCallbacks(mqtt_client->client, NULL, NULL, message_handler, NULL);
    MQTTClient_subscribe(mqtt_client->client, topic, QOS);
    printf("Subscribed to topic %s\n", topic);
}
