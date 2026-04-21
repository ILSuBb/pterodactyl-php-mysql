FROM quay.io/yajtpg/pterodactyl-images:php-8.1

USER root

RUN apt-get update -y && \
    apt-cache search mysql && \
    apt-cache search mariadb

USER container
