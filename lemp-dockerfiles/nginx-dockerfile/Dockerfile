FROM ubuntu:18.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y nginx php-mysql curl && \
    chown -R www-data:www-data /var/lib/nginx && \
    echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
    unlink /etc/nginx/sites-enabled/default && \
    mkdir /var/www/wordpress && \
    curl -o /bin/wp-cli https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /bin/wp-cli

RUN chown -R www-data:www-data /var/www/wordpress

VOLUME ["/var/www/wordpress"]

EXPOSE 80

CMD    ["nginx"]
