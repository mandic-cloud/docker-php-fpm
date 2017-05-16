#!/bin/bash
INAME="mandic/php"
FLAVORS="5.3-fpm/garlic 5.3-fpm/oyster 5.4-fpm/coffe 5.6-fpm/peach 5.6-fpm/bacon 5.6-fpm/rice"
mkdir -p logs
for F in $FLAVORS; do
	T=${F/\//\-}
	echo -n "Building ${INAME}:${T}... "
	CONTAINER=$(docker build --no-cache --rm -t ${INAME}:$T $F > logs/$T.log 2>&1)
	echo $CONTAINER
done