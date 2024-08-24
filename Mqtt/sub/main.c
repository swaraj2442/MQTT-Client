#include "subscriber.h"

int main() {
    // Connect to the MQTT broker
    struct mqtt_client *mqtt_client = connect_mqtt();

    // Connect to the Kafka broker
    rd_kafka_topic_t *rkt;
    rd_kafka_t *kafka_client = connect_kafka(&rkt);

    // Set the Kafka client as the user data for the MQTT client
    mqtt_client_set_userdata(mqtt_client, kafka_client);

    // Start subscribing to messages
    subscribe(mqtt_client);

    // Enter the MQTT client loop to continuously listen for messages
    mqtt_client_loop_forever(mqtt_client);

    // Clean up Kafka resources after the loop exits
    rd_kafka_flush(kafka_client, 10 * 1000); // Wait for final messages to be delivered
    rd_kafka_topic_destroy(rkt);
    rd_kafka_destroy(kafka_client);

    return 0;
}
