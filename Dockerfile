# List of PHP extensions needed to run Wordpress
# https://make.wordpress.org/hosting/handbook/server-environment/
FROM php:8.2.11-fpm-alpine

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN apk add git nano nodejs npm && \
    chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions bcmath gd intl mysqli pdo_mysql zip @composer
