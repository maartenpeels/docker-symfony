FROM php:7.2-fpm

RUN apt-get update
RUN apt-get install -y zlib1g-dev git \
    && docker-php-ext-install zip \
    && docker-php-ext-install pdo \
    && docker-php-ext-install pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

COPY . /var/www/project
WORKDIR /var/www/project/

RUN composer install