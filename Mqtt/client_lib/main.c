#include "mqtt_client.h"
#include <stdio.h>
#include <stdlib.h>

void message_handler(char* topic, char* message) {
    printf("Received message: %s on topic: %s\n", message, topic);
}

int main(int argc, char* argv[]) {
    // Initialize MQTT client
    mqtt_client_t* mqtt_client = mqtt_client_init("tcp://localhost:1883", "example_client");

    // Connect to the broker
    mqtt_client_connect(mqtt_client);

    // Publish a message
    mqtt_client_publish(mqtt_client, "test/topic", "Hello, MQTT!");

    // Subscribe to a topic
    mqtt_client_subscribe(mqtt_client, "test/topic", message_handler);

    // Run the client (in a real application, you'd want to keep this running)
    printf("Press any key to exit...\n");
    getchar();

    // Disconnect the client
    mqtt_client_disconnect(mqtt_client);

    return 0;
}
