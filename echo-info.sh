#!/bin/bash

j=$1
i=0

cat ./images | while read ITEM; do
  i=$[$i+1]
  if [ "$i" == "$j" ]; then
    DIR=$(echo ${ITEM##*/} | awk -F ':' '{print $1}')
    VERSION=$(echo ${ITEM##*:})
    echo $DIR
    echo $ITEM
    echo $VERSION 
  fi
done
