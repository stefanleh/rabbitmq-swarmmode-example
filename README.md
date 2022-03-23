https://groups.google.com/g/rabbitmq-users/c/RwtQdv5AH5Y

1. docker build --no-cache -t acme-rabbit-mq:test .
2. docker push PREFERED_REGISTRY/bacme-rabbit-mq:test
3. docker stack deploy -c docker-compose.yml TEST --with-registry-auth
4. docker service logs -f TEST_rabbit-mq
