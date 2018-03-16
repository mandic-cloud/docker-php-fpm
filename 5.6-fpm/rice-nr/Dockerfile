FROM mandic/php:5.6-fpm-rice

MAINTAINER wagnerpinheiro

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -yq install wget && \
    wget -O - https://download.newrelic.com/548C16BF.gpg | apt-key add - && \
    echo "deb http://apt.newrelic.com/debian/ newrelic non-free" > /etc/apt/sources.list.d/newrelic.list

# Setup environment variables for initializing New Relic
ENV NR_INSTALL_SILENT 1
ENV NR_INSTALL_KEY 12345asdfg54321gfdsa

RUN apt-get update && \
    apt-get -yq install newrelic-php5

