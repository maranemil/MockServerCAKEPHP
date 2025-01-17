FROM php:8.3-apache
LABEL authors="mpxvm"

RUN apt-get update && apt-get install -y \
    libmcrypt-dev libzip-dev zip tzdata cron nano wget curl \
    libicu-dev iputils-ping \
    && docker-php-ext-configure intl \
    && docker-php-ext-install -j$(nproc) zip intl mysqli pdo pdo_mysql \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \



RUN a2enmod rewrite
# service apache2 reload

EXPOSE 8081
EXPOSE 8082
EXPOSE 8083
