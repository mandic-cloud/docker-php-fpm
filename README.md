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

- [5.3-fpm/garlic](5.3-fpm/garlic): minimal version;
- [5.3-fpm/oyster](5.3-fpm/oyster): extends the garlic flavor with multiples php modules;
- [5.4-fpm/coffe](5.4-fpm/coffe): php 5.4 with some basic modules;
- [5.6-fpm/peach](5.6-fpm/peach): minimal version with pdo_pgsql;
- [5.6-fpm/bacon](5.6-fpm/bacon): standard flavor with a lot of modules;
- [5.6-fpm/rice](5.6-fpm/rice): standard flavor with pdo_mysql and pdo_pgsql;
- [5.6-fpm/rice-nr](5.6-fpm/rice-nr): extends the rice flavor with newrelic php agent install;
- [7.0-fpm/cherry](7.0-fpm/cherry): minimal version with pdo_mysql and curl;

## Extensões suportadas pelo docker

bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv imap interbase intl json ldap mbstring mcrypt mssql mysql mysqli oci8 odbc pcntl pdo pdo_dblib pdo_firebird pdo_mysql pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell readline recode reflection session shmop simplexml snmp soap sockets spl sqlite standard sybase_ct sysvmsg sysvsem sysvshm tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter xsl zip