FROM ubuntu:18.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y nginx php-mysql && \
    chown -R www-data:www-data /var/lib/nginx && \
    echo "\ndaemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD    ["nginx"]
