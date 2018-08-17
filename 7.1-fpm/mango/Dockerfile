FROM php:7.1-fpm

MAINTAINER wagnerpinheiro

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
        git \
        libcurl3-dev \
        libedit-dev \
        libjpeg62-turbo-dev \
        libldap2-dev \
        libmcrypt-dev \
        default-libmysqlclient-dev \        
        libpq-dev \
        libpspell-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        libz-dev \
        locales \
        unixodbc-dev \
        unzip \
        vim \
        wget \
        zip \
        zlib1g-dev \
        libpng-dev \
        libfreetype6-dev \
        libjpeg-dev \
        libxpm-dev \
        libwebp-dev

# https://bugs.php.net/bug.php?id=49876
RUN ln -fs /usr/lib/x86_64-linux-gnu/libldap.so /usr/lib/

RUN echo "Installing PHP extensions" \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-xpm-dir=/usr/include/ --with-webp-dir=/usr/include/ \
    && docker-php-ext-install iconv mcrypt gd pdo_mysql pdo_pgsql pcntl bcmath simplexml xmlrpc soap pspell ldap mbstring mysqli pgsql sysvmsg sysvsem sysvshm gettext \    
    && docker-php-ext-enable iconv mcrypt gd pdo_mysql pdo_pgsql pcntl bcmath simplexml xmlrpc soap pspell ldap mbstring mysqli pgsql sysvmsg sysvsem sysvshm gettext

RUN pecl install xdebug-2.5.5 \
	&& docker-php-ext-enable xdebug

# RUN pecl install memcache-2.2.7 \
#	&& docker-php-ext-enable memcache

RUN apt-get -y install libmemcached-dev libmemcached11 \
	&& pecl install memcached-3.0.4 \
	&& docker-php-ext-enable memcached

RUN apt-get -y install libssl-dev libc-client2007e-dev libkrb5-dev \
    && docker-php-ext-configure imap --with-imap-ssl --with-kerberos \
    && docker-php-ext-install imap \    
    && docker-php-ext-enable imap

# Install php-gnupg
RUN apt-get install -y libgpgme11-dev \
	&& pecl install gnupg-1.4.0 \
	&& docker-php-ext-enable gnupg.so

RUN apt-get install libtidy-dev -y \
	&& docker-php-ext-install tidy

RUN apt-get install libxslt-dev -y \
	&& docker-php-ext-install xsl

RUN pecl install zip-1.13.5 \
	&& docker-php-ext-enable zip.so

RUN pecl install mongodb-1.4.2 \
	&& docker-php-ext-enable mongodb.so

COPY ./conf/default_locale.gen /etc/locale.gen

RUN echo 'LANG="en_US.UTF-8"' > /etc/default/locale \
	&& dpkg-reconfigure --frontend=noninteractive locales \
	&& update-locale LANG=en_US.UTF-8

ENV LANG=en_US.UTF-8

COPY ./conf/php.ini /usr/local/etc/php/php.ini

# install composer
RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/bin
ENV PATH /root/.composer/vendor/bin:$PATH
