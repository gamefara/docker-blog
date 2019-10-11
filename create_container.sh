#!/bin/sh

docker ps -aq | xargs docker stop

. ./.env
sudo mkdir -p ${HTTPS_PORTAL_DIRECTORY}
sudo mkdir -p ${WORDPRESS_DIRECTORY}
sudo mkdir -p ${MYSQL_DIRECTORY} 

./start_container.sh
