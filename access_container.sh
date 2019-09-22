#!/bin/sh

if [ $# = 1 ]; then
    if [ $1 = "wordpress" ]; then
        docker-compose exec wordpress bash
    elif [ $1 = "mysql" ]; then
        . ./.env
        docker-compose exec mysql bash -c "mysql -D ${MYSQL_DATABASE} -u${MYSQL_USER} -p${MYSQL_PASSWORD}"
    fi
else
    echo '接続するコンテナを指定してください'
fi
