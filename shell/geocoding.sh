#!/usr/bin/env bash

if [ $# = 0 ]; then
    echo "usage: geocoding [word]"
else
    response=`curl https://www.geocoding.jp/api/?q=$1`

    lat=`echo $response | sed 's/^.*<lat.*>\(.*\)<\/lat>.*$/\1/'`
    lng=`echo $response | sed 's/^.*<lng.*>\(.*\)<\/lng>.*$/\1/'`

    echo "word: $1"
    echo "latitude: $lat"
    echo "longitude: $lng"
fi
