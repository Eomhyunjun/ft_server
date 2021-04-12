#!/bin/bash

mv localhost.dev.crt etc/ssl/certs/
mv localhost.dev.key etc/ssl/private/
chmod 444 etc/ssl/certs/localhost.dev.crt
chmod 400 etc/ssl/private/localhost.dev.key

chown -R www-data:www-data /var/www/html/wordpress

service mysql start
mysql < /tmp/init.sql
service php7.3-fpm start
service nginx start

bash
