FROM mandic/php:5.3-fpm-oyster

MAINTAINER wagnerpinheiro

ENV DEBIAN_FRONTEND noninteractive

RUN pecl install apc-3.1.13 \
    && docker-php-ext-enable apc.so
