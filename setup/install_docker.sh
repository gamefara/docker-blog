#!/bin/sh

# newest version docker install
curl -sSL http://get.docker.com/ | sh
docker version

# exec docker, not "sudo"
sudo usermod -aG docker ${USER}

# auto exec
sudo systemctl start docker
sudo systemctl enable docker

# docker-compose install
VERSION=1.24.0
sudo curl -L "https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# enable docker-compose
sudo chmod +x /usr/local/bin/docker-compose

