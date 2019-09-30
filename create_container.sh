#!/bin/sh

bash ./rmi-container.sh

. ./.env
sudo mkdir -p ${WORDPRESS_DIRECTORY}
sudo mkdir -p ${MYSQL_DIRECTORY} 

# create network
LINK_NAME=blog_link
NETWORK_COUNT=`docker network ls | grep ${LINK_NAME} | wc -l`
if [ ${NETWORK_COUNT} = 1 ]; then
    docker network rm ${LINK_NAME}
fi
sudo docker network create --driver bridge ${LINK_NAME}

./start_container.sh
