FROM quay.io/yajtpg/pterodactyl-images:php-8.1

USER root

RUN apt-get update -y && \
    apt-get install -y libmariadb-dev libmariadb-dev-compat && \
    docker-php-ext-install pdo pdo_mysql

USER container
