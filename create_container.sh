#!/bin/sh

OUTPUT_COMMON_DIRECTORY=./data
OUTPUT_MYSQL_DIRECTORY=${OUTPUT_COMMON_DIRECTORY}/mysql
OUTPUT_WORDPRESS_DIRECTORY=${OUTPUT_COMMON_DIRECTORY}/wordpress

# mkdir
sudo mkdir -p ${OUTPUT_WORDPRESS_DIRECTORY}
sudo mkdir -p ${OUTPUT_MYSQL_DIRECTORY}

#sudo chcon -Rt svirt_sandbox_file_t ${OUTPUT_WORDPRESS_DIRECTORY}
#sudo chcon -Rt svirt_sandbox_file_t ${OUTPUT_MYSQL_DIRECTORY}

# create network
LINK_NAME=blog_link
NETWORK_COUNT=`docker network ls | grep ${LINK_NAME} | wc -l`
if [ ${NETWORK_COUNT} = 1 ]; then
    docker network rm ${LINK_NAME}
fi
sudo docker network create --driver bridge ${LINK_NAME}

./start_container.sh
