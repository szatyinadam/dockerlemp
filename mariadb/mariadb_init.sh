#!/bin/sh

/usr/bin/mysqld_safe > /dev/null 2>&1 &

mysqladmin --silent --wait=30 ping

mysql -uroot -e "CREATE USER '$DBUSER'@'%' IDENTIFIED BY '$DBPASSWORD'"
mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO '$DBUSER'@'%' WITH GRANT OPTION"
mysql -uroot -e "FLUSH PRIVILEGES"
mysql -uroot -e "CREATE SCHEMA $DBNAME"

echo "========================================================================"
echo "You can now connect to this MariaDB Server using:"
echo "    mysql -u $DBUSER -p$DBPASSWORD -h $HOSTNAME $DBNAME"
echo "========================================================================"

mysqladmin -uroot shutdown
