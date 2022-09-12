FROM mongo:6

COPY mongod.conf custom_mongod.conf

RUN mkdir -p /var/mongodb/logs/
RUN mkdir -p /var/mongodb/db/

ENTRYPOINT ["mongod", "--config", "/custom_mongod.conf"]
# ENTRYPOINT mongod