FROM	debian:buster 

LABEL   maintainer="heom@stdent.42seoul.kr"

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


COPY    ./srcs/run.sh ./
COPY    ./srcs/default ./tmp
COPY    ./srcs/we-config.php ./tmp
COPY    ./srcs/config.inc.php ./tmp

EXPOSE  80 443

CMD 	bash run.sh
