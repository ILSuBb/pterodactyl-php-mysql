FROM quay.io/yajtpg/pterodactyl-images:php-8.1

USER root

RUN sed -i 's/deb.debian.org/archive.debian.org/g' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/archive.debian.org/g' /etc/apt/sources.list && \
    sed -i '/stretch-updates/d' /etc/apt/sources.list && \
    sed -i '/buster-updates/d' /etc/apt/sources.list && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends default-libmysqlclient-dev && \
    docker-php-ext-install pdo pdo_mysql

USER container
