[![Build Status](https://travis-ci.org/mandic-cloud/docker-php-fpm.svg?branch=master)](https://travis-ci.org/mandic-cloud/docker-php-fpm)

# docker-php-fpm

Dockerfiles for PHP Flavors.


Follow the:

- [Travis Build Images](https://travis-ci.org/mandic-cloud/docker-php-fpm)
- [Docker Hub Registry Images](https://hub.docker.com/r/mandic/php/)


## Usage:

Install [docker](https://docs.docker.com/engine/installation/) and [docker-compose](https://docs.docker.com/compose/install/), review the [docker-compose.yml](./docker-compose.yml), and run:

```
docker-compose up
```

## Flavors

List of docker images available in [docker hub](https://hub.docker.com/r/mandic/php/tags/):

- [mandic/php:5.3-fpm-garlic](5.3-fpm/garlic): minimal version;
- [mandic/php:5.3-fpm-oyster](5.3-fpm/oyster): standard flavor;
- [mandic/php:5.3-fpm-oyster-nr](5.3-fpm/oyster-nr): extends the oyster flavor with newrelic php agent install;
- [mandic/php:5.3-fpm-oyster-apc](5.3-fpm/oyster-apc): extends the oyster with apc module;
- [mandic/php:5.3-fpm-coconut](5.3-fpm/coconut): extends the oyster flavor with Oracle and MS-SQL support (dba, mssql and pdo_dblib modules);
- [mandic/php:5.4-fpm-coffe](5.4-fpm/coffe): php 5.4 with some basic modules;
- [mandic/php:5.6-fpm-peach](5.6-fpm/peach): minimal version with pdo_pgsql;
- [mandic/php:5.6-fpm-bacon](5.6-fpm/bacon): flavor with a lot of modules;
- [mandic/php:5.6-fpm-rice](5.6-fpm/rice): standard flavor;
- [mandic/php:5.6-fpm-rice-nr](5.6-fpm/rice-nr): extends the rice flavor with newrelic php agent install;
- [mandic/php:7.0-fpm-cherry](7.0-fpm/cherry): standard flavor;
- [mandic/php:7.0-fpm-cherry-nr](7.0-fpm/cherry-nr): extends the cherry flavor with newrelic php agent install;
- [mandic/php:7.1-fpm-mango](7.1-fpm/mango): standard flavor;
- [mandic/php:7.1-fpm-mango-nr](7.1-fpm/mango-nr): extends the cherry flavor with newrelic php agent install;


## Extensions supported by docker

### php:5.3-fpm

bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv imap interbase intl json ldap mbstring mcrypt mssql mysql mysqli oci8 odbc pcntl pdo pdo_dblib pdo_firebird pdo_mysql pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell readline recode reflection session shmop simplexml snmp soap sockets spl sqlite standard sybase_ct sysvmsg sysvsem sysvshm tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter xsl zip

### php:7.0-fpm

bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv imap interbase intl json ldap mbstring mcrypt mysqli oci8 odbc opcache pcntl pdo pdo_dblib pdo_firebird pdo_mysql pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell readline recode reflection session shmop simplexml snmp soap sockets spl standard sysvmsg sysvsem sysvshm tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter xsl zip