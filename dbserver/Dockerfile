# Database Dockerfile
FROM mariadb:lts

ENV DOCKER_CONTENT_TRUST=1

# Installing necessary packages
RUN apt-get update && \
    apt-get install -y \
        ca-certificates \
        openssl \
        bash \
        curl \
        iputils-ping \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#added for healthcheck script#
#COPY health/health-check-script.sh /usr/local/bin/
#RUN chmod +x /usr/local/bin/health-check-script.sh

# Copy TLS certificates for encrypted communication
COPY tls-certs /etc/docker/certs.d/

# Copy MySQL configuration file
COPY mysqld.cnf /mysql/mysql.conf.d/mysqld.cnf

#COPY daemon.json /etc/docker/daemon.json


# Expose MySQL port
EXPOSE 3306

RUN chown -R mysql:mysql /var/lib/mysql 
USER mysql 
CMD ["mysqld"]
