mysqld_safe &
mysqladmin --silent --wait=30 ping || exit 1
mysql -e "CREATE USER '$DBUSER' IDENTIFIED BY '$DBPW';"
mysql -e "CREATE DATABASE $DBNAME DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
mysql -e "GRANT ALL ON $DBNAME.* TO '$DBUSER'@'%';"
mysql -e "FLUSH PRIVILEGES;"
