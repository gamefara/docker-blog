#!/bin/sh

cd `dirname $0`
. ../.env

docker-compose exec -T node bash -c '
    npm install && 
    npm cache clean -f
'
