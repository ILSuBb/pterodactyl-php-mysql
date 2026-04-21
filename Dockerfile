FROM quay.io/yajtpg/pterodactyl-images:php-8.1

USER root

RUN cat /etc/os-release && \
    which apk || which apt-get || which yum || which dnf

USER container
