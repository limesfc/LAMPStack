FROM httpd:2.4.58-alpine
ADD . /usr/local/apache2/htdocs
EXPOSE 80