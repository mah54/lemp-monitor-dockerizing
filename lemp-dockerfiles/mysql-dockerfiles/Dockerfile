FROM ubuntu

ENV DBNAME="wp_db" \
    DBUSER="wp_user" \
    DBPW="wp_pw" \
    WP_DOMAIN="google.com"

COPY wordpress-database.sh /tmp/wordpress-database.sh

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server \
 && sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mysql.conf.d/mysqld.cnf \
 && mkdir /var/run/mysqld \
 && chown -R mysql:mysql /var/run/mysqld \
 && chown mysql:mysql -R /var/lib/mysql/* \
 && chmod 755 -R /var/lib/mysql/* \
 && bash /tmp/wordpress-database.sh

#VOLUME ["/etc/mysql", "/var/lib/mysql"]
 
#EXPOSE 3306

CMD ["mysqld_safe"]
