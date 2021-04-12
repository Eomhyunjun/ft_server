#!/bin/bash

mv localhost.dev.crt etc/ssl/certs/
mv localhost.dev.key etc/ssl/private/
chmod 444 etc/ssl/certs/l/ocalhost.dev.crt
chmod 400 etc/ssl/private/localhost.dev.key

wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
mv wordpress/ var/www/html/
chown -R www-data:www-data /var/www/html/wordpress

service mysql start
CREATE DATABASE wordpress;
CREATE USER 'heom'@'localhost' IDENTIFIED BY 'heom';
GRANT ALL PRIVILEGES ON wordpress.* TO 'heom'@'localhost' WITH GRANT OPTION;
USE wordpress;
service php7.3-fpm start
