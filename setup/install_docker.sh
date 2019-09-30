#!/bin/sh

# newest version docker install
sudo yum install -y docker
sudo yum update -y
sudo service docker start
docker version

# exec docker, not "sudo"
sudo usermod -aG docker ${USER}

# docker-compose install
VERSION=1.24.0
sudo curl -L "https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# enable docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo 'Please once shutdown'
