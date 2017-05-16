FROM php:7.0-fpm
MAINTAINER Wagner Pinheiro <https://github.com/wagnerpinheiro>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
        git \
        vim \
        libcurl3-dev \
        curl

RUN docker-php-ext-install pdo pdo_mysql curl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ENV PATH /root/.composer/vendor/bin:$PATH
