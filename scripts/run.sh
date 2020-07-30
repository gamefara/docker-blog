#!/bin/sh

cd `dirname $0`
. ../.env

docker-compose exec -T node bash -c 'npm run dev -- --host 0.0.0.0'
