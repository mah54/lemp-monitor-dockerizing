FROM ubuntu

ENV DBNAME="wp_db" \
    DBUSER="wp_user" \
    DBPW="wp_pw" \
    VER="7.4"

RUN echo "Asia/Tehran" >> /etc/timezone && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y apt-transport-https curl wget software-properties-common && \
    DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y -f php$VER-mysql php$VER-fpm

RUN wget https://wordpress.org/latest.tar.gz -P /var/www/ && \
    tar xzf /var/www/latest.tar.gz -C /var/www/ && \
    rm /var/www/latest.tar.gz

COPY wp-config.php /var/www/wordpress/

RUN sed -i 's/listen =/listen = 9000;/g' /etc/php/$VER/fpm/pool.d/www.conf && \
    sed -i  s/DBNAME/$DBNAME/g  /var/www/wordpress/wp-config.php && \
    sed -i  s/DBUSER/$DBUSER/g  /var/www/wordpress/wp-config.php && \
    sed -i  s/DBPW/$DBPW/g  /var/www/wordpress/wp-config.php && \
    curl -s https://api.wordpress.org/secret-key/1.1/salt/ >> /var/www/wordpress/wp-config.php && \
    chown -R www-data:www-data /var/www/wordpress && \
    mkdir -p /run/php/

#EXPOSE 9000

CMD /usr/sbin/php-fpm${VER} -F -R
