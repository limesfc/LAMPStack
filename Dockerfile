FROM php:8.3-apache

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# FROM httpd:2.4.58-alpine
# ADD . /usr/local/apache2/htdocs
# EXPOSE 80