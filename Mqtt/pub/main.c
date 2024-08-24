#include "producer.h"

int main() {
    srand(time(NULL)); // Initialize random seed values

    // Connect to the MQTT broker
    struct mqtt_client *mqtt_client = connect_mqtt();

    // Start publishing messages
    publish(mqtt_client);

    // Disconnect the MQTT client
    mqtt_client_disconnect(mqtt_client);

    return 0;
}
