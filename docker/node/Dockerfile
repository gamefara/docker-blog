FROM node:14.6.0

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y vim sudo && \
    npm install -g gatsby-cli

RUN echo 'root:root' | chpasswd && \
    echo "node:node" | chpasswd && \
    echo "node  ALL=(ALL)   NOPASSWD:   ALL" >> /etc/sudoers

USER node
WORKDIR /var/www

