FROM mandic/php:5.3-fpm-oyster

MAINTAINER wagnerpinheiro

ENV DEBIAN_FRONTEND noninteractive

RUN docker-php-ext-install dba

RUN docker-php-ext-configure mssql --with-libdir=lib/x86_64-linux-gnu && \
    docker-php-ext-install mssql
    
COPY conf/php.ini /usr/local/etc/php/php.ini
