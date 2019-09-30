#!/bin/sh

if [ $# = 1 ]; then
    if [ $1 = "w" ] || [ $1 = "wordpress" ]; then
        docker-compose exec wordpress bash
    elif [ $1 = "m" ] || [ $1 = "mysql" ]; then
        . ./.env
        docker-compose exec mysql bash -c "mysql -D ${_DB_NAME} -u${_DB_USER} -p${_DB_PASS}"
    fi
else
    echo 'please "bash access_container.sh (container name)"'
fi
