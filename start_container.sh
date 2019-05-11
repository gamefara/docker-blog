#!/bin/sh

cd `dirname $0`

if [ $# = 1 ]; then
    if [ $1 = "-r" ]; then
        docker ps -aq | xargs docker stop | xargs docker rm
    fi
fi
docker-compose up -d
