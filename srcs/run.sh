#!/bin/bash

service mysql start
mysql < /tmp/init.sql
service php7.3-fpm start
service nginx start