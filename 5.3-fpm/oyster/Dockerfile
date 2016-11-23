FROM mandic/php:5.3-fpm-garlic

MAINTAINER wagnerpinheiro

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
        git \
        vim \
        curl \
        libcurl3-dev \
        libcurl4-openssl-dev \
        libedit-dev \
        libfreetype6-dev \
        libjpeg62-dev \
        libgmp-dev \
        libicu-dev \        
        libldap2-dev \
        libmcrypt-dev \
        libmemcached-dev \
        libmysqlclient18 \
        libncurses5-dev \
        libpng12-dev \
        libpq-dev \
        libpspell-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        libz-dev \
        php-pear \
        ssmtp \
        unixodbc-dev \
        zip \
        zlib1g-dev        

# https://bugs.php.net/bug.php?id=49876
RUN ln -fs /usr/lib/x86_64-linux-gnu/libldap.so /usr/lib/

RUN echo "Installing PHP extensions" \
    && docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
    && docker-php-ext-configure mysql --with-mysql=mysqlnd \
    && docker-php-ext-configure mysqli --with-mysqli=mysqlnd \
    && docker-php-ext-install iconv mcrypt gd pdo_mysql pdo_pgsql pcntl bcmath simplexml xmlrpc soap pspell ldap mbstring \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-enable iconv mcrypt gd pdo_mysql pdo_pgsql pcntl bcmath simplexml xmlrpc soap pspell ldap mbstring 

RUN pecl install xdebug-2.2.7 \
	&& docker-php-ext-enable xdebug

RUN pecl install memcache-2.2.5 \
	&& docker-php-ext-enable memcache

# install composer
RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/bin
ENV PATH /root/.composer/vendor/bin:$PATH

RUN apt-get -y install libssl-dev libc-client2007e-dev libkrb5-dev \
    && docker-php-ext-configure imap --with-imap-ssl --with-kerberos \
    && docker-php-ext-install imap \    
    && docker-php-ext-enable imap

RUN docker-php-ext-install gettext

# Install php-gnupg
RUN apt-get install -y libgpgme11-dev
# RUN pecl install gnupg-1.3.2 # 1.3.2 ta bugado
RUN pecl install gnupg-1.3.3
RUN docker-php-ext-enable gnupg.so

RUN docker-php-ext-install mysql
RUN docker-php-ext-install pgsql

RUN docker-php-ext-install sysvmsg sysvsem sysvshm 

RUN apt-get install libtidy-dev -y
RUN docker-php-ext-install tidy

RUN apt-get install libxslt-dev -y
RUN docker-php-ext-install xsl

RUN pecl install zip-1.12.4
RUN docker-php-ext-enable zip.so

RUN pecl install mongo-1.2.10
RUN docker-php-ext-enable mongo.so


COPY conf/php.ini /usr/local/etc/php/php.ini