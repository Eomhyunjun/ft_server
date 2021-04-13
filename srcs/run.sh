#!/bin/bash

service mysql start
mysql -u root --skip-password < /tmp/init.sql
service php7.3-fpm start
nginx -g "daemon off;" 
