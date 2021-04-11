FROM ubuntu:18.04

ENV DBNAME="wp_db" \
    DBUSER="wp_user" \
    DBPW="wp_pw" \
    WP_DOMAIN="google.com"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y nginx php-mysql curl && \
    chown -R www-data:www-data /var/lib/nginx && \
    echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
    unlink /etc/nginx/sites-enabled/default && \
    mkdir /var/www/wordpress && \
    curl -o /bin/wp-cli https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /bin/wp-cli

COPY install-wordpress.sh /tmp/

RUN bash /tmp/install-wordpress.sh && \
    chown -R www-data:www-data /var/www/wordpress

VOLUME ["/var/www/wordpress"]

EXPOSE 80

CMD    ["nginx"]
