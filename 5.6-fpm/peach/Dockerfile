FROM php:5.6-fpm

MAINTAINER rafaelriedel

RUN apt-get update \
    && apt-get -y --no-install-recommends install libpq5 libpq-dev \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN docker-php-ext-install pdo_pgsql


WORKDIR "/src"