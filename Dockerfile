FROM rabbitmq:3.8-management-alpine
COPY plugins/*.ez /plugins/
RUN rabbitmq-plugins enable --offline rabbitmq_management rabbitmq_mqtt rabbitmq_federation_management rabbitmq_stomp
RUN rabbitmq-plugins enable rabbitmq_message_deduplication
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

