#!/bin/bash

cat ./images | while read ITEM; do
  DIR=$(echo ${ITEM##*/} | awk -F ':' '{print $1}')
  touch $DIR/Dockerfile && \
  echo $ITEM > $DIR/Dockerfile
done
