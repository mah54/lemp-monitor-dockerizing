FROM ubuntu

ENV DBNAME="wp_db" \
    DBUSER="wp_user" \
    DBPW="wp_pw" 

RUN echo "Asia/Tehran" >> /etc/timezone && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y php-fpm php-mysql curl wget

COPY install-wordpress.sh /tmp/

RUN bash /tmp/install-wordpress.sh

COPY wp-config.php /var/www/wordpress/

RUN sed -i  s/DBNAME/$DBNAME/g  /var/www/wordpress/wp-config.php && \
    sed -i  s/DBUSER/$DBUSER/g  /var/www/wordpress/wp-config.php && \
    sed -i  s/DBPW/$DBPW/g  /var/www/wordpress/wp-config.php && \
    curl -s https://api.wordpress.org/secret-key/1.1/salt/ >> /var/www/wordpress/wp-config.php && \
    chown -R www-data:www-data /var/www/wordpress && \
    mkdir -p /run/php/

#EXPOSE 9000

CMD [ "/usr/sbin/php-fpm7.4", "-F", "-R" ]
