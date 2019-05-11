#!/bin/sh

if [ $# = 1 ]; then
    if [ $1 = "wordpress" ]; then
        docker exec -it wordpress bash
    elif [ $1 = "mysql" ]; then
        . ./.env
        docker exec -it mysql bash -c "mysql -D ${MYSQL_DATABASE} -u${MYSQL_USER} -p${MYSQL_PASSWORD}"
    fi
else
    echo '接続するコンテナを指定してください'
fi
