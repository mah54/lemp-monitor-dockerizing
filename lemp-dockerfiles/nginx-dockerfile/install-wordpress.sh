wp-cli core download --path=/var/www/wordpress --allow-root
wp-cli config create --dbhost="0.0.0.0" --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPW --locale=en_DB --path=/var/www/wordpress --allow-root
wp-cli core install --url=$WP_DOMAIN --title=$WP_DOMAIN --admin_user=admin --admin_password=admin --admin_email=email@gmail.com --skip-email --path=/var/www/wordpress --allow-root
