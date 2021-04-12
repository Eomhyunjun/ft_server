FROM	debian:buster 

LABEL   maintainer="heom@student.42seoul.kr"

RUN		sed -i 's/deb.debian.org/ftp.kr.debian.org/g' etc/apt/sources.list

RUN     apt-get update && apt-get install -y \
        nginx \
        curl \
        mariadb-server \
        php-mysql \
        php-mbstring \
        openssl \
        vim \
        wget \
        php-fpm

RUN     openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=Lee/CN=localhost" -keyout localhost.dev.key -out localhost.dev.crt

RUN     wget https://wordpress.org/latest.tar.gz && \
        tar -xvf latest.tar.gz && \
        mv wordpress/ var/www/html/

RUN     wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz && \
        tar -xvf phpMyAdmin-5.0.2-all-languages.tar.gz && \
        mv phpMyAdmin-5.0.2-all-languages phpmyadmin && \
        mv phpmyadmin /var/www/html/

COPY    ./srcs/run.sh /tmp
COPY    ./srcs/init.sql /tmp
COPY    ./srcs/default /etc/nginx/sites-available/
COPY    ./srcs/wp-config.php /var/www/html/wordpress/
COPY    ./srcs/config.inc.php /var/www/html/phpmyadmin/config.inc.php

EXPOSE  80 443

CMD 	bash /tmp/run.sh
