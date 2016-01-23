# dockerlemp
This is a full LEMP stack with Varnish cache in Docker containers, suitable for rapid Web (PHP) development with MySQL.

Just clone it, set Your MySQL credential in the docker-compose.yml file (DBNAME, DBUSER, DBPASSWORD) and run it by docker-compose up .


Your database's files will be stored permanently in the database folder.

You can set Your own my.cnf or use my config file for MySQL in the mariadb folder.

You can also use Your own Nginx config file instead of mine in the nginx-fpm folder.

The Nginx virtual hosts file stored in the sites folder.

Please put your code in the www/default/public folder.

All containers based on Alpine Linux, so the images will be small and the build process should be faster compare to ubuntu.
