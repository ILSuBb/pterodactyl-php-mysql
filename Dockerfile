FROM quay.io/yajtpg/pterodactyl-images:php-8.1

USER root

RUN apt-get update -y 2>&1 && \
    apt-get install -y --no-install-recommends \
        libpdo-mysql-dev 2>&1 || \
    apt-get install -y --no-install-recommends \
        libmysqld-dev 2>&1 || \
    apt-get install -y --no-install-recommends \
        mysql-client 2>&1 && \
    docker-php-ext-install pdo pdo_mysql 2>&1

USER container
