FROM rabbitmq:3.9-management-alpine

RUN rabbitmq-plugins --offline enable rabbitmq_peer_discovery_consul

ADD rabbitmq.conf /etc/rabbitmq/
ADD definitions.json /etc/rabbitmq/

EXPOSE 5672 15672
