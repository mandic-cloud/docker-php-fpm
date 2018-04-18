FROM mandic/php:5.3-fpm-oyster

MAINTAINER wagnerpinheiro

ENV DEBIAN_FRONTEND noninteractive

RUN docker-php-ext-install dba

# https://docs.microsoft.com/en-us/sql/connect/php/system-requirements-for-the-php-sql-driver?view=sql-server-2017

RUN apt-get update && apt-get install freetds-common freetds-bin unixodbc php5-sybase

RUN apt-get install -y freetds-dev && ln -s /usr/lib/x86_64-linux-gnu/libsybdb.so /usr/lib/libsybdb.so

# RUN docker-php-ext-configure mssql --with-libdir=/usr && \
#    docker-php-ext-install mssql

RUN docker-php-ext-configure mssql && \
    docker-php-ext-install mssql

RUN docker-php-ext-configure pdo_dblib --with-pdo-dblib=/usr && \
	docker-php-ext-install pdo_dblib
    
COPY conf/php.ini /usr/local/etc/php/php.ini
