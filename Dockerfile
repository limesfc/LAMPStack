FROM php:8.3-apache

RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

RUN docker-php-ext-install gd pdo pdo_mysql sockets

ADD . /var/www/html

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# FROM httpd:2.4.58-alpine
# ADD . /usr/local/apache2/htdocs
# EXPOSE 80