#!/bin/bash
INAME="mandic/php"
FLAVORS="5.3-fpm/garlic 5.3-fpm/oyster 5.3-fpm/oyster-nr 5.3-fpm/oyster-apc 5.3-fpm/coconut 5.4-fpm/coffe 5.6-fpm/peach 5.6-fpm/bacon 5.6-fpm/rice 5.6-fpm/rice-nr 7.0-fpm/cherry 7.0-fpm/cherry-nr"
mkdir -p logs
for F in $FLAVORS; do
	T=${F/\//\-}
	echo -n "Building ${INAME}:${T}... "
	# docker build --no-cache --rm -t mandic/php:5.3-fpm-garlic 5.3-fpm/garlic
	CONTAINER=$(docker build --no-cache --rm -t ${INAME}:$T $F > logs/$T.log 2>&1)
	echo $CONTAINER
done