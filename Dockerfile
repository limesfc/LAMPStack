FROM httpd:2.4.58-alpine
ADD ./index.html /usr/local/apache2/htdocs
EXPOSE 80