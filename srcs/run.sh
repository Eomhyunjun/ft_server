#!/bin/bash

service mysql start
#mysql -u root --skip-password < /tmp/init.sql
service php7.3-fpm start
##service nginx start
#nginx -g "daemon off;" 
