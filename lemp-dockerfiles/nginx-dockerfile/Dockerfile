FROM ubuntu

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
    chown -R www-data:www-data /var/www/wordpress

COPY WP_DOMAIN.conf /etc/nginx/sites-enabled/

RUN mv /etc/nginx/sites-enabled/WP_DOMAIN.conf /etc/nginx/sites-enabled/$WP_DOMAIN.conf && \
    sed -i  s/WP_DOMAIN/$WP_DOMAIN/g  /etc/nginx/sites-enabled/$WP_DOMAIN.conf

#VOLUME ["/etc/nginx"]

EXPOSE 80

CMD    ["nginx"]
