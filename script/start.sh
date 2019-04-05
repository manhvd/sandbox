#!/bin/bash

set -eu

# https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository
sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 | grep docker@docker.com || exit 1
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo docker run --rm hello-world
# Make sure your docker engine version is at least version 1.7.1 for docker-compose version 1.5.2
# Available docker-compose can be seen at https://github.com/docker/compose/releases
# Change VERSION variable below if you need other version
VERSION=1.18.0; sudo curl -Lo /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/$VERSION/docker-compose-`uname -s`-`uname -m` && sudo chmod +x /usr/local/bin/docker-compose

sudo apt-get -y install nginx

sudo service nginx stop

# git clone git://github.com/manhvd/docker_backend \

git clone git://github.com/manhvd/sanbox_new \

# cd docker_backend/FE/assets
 
# sudo sed -i "s/localhost/$1/g" config.json

# cd ../..

# cd config

# sudo sed -i "s/localhost/$1/g" default.json

# cd ..
 
sudo docker-compose -f docker-compose.yml down \

sudo docker-compose -f docker-compose.yml build \

sudo docker-compose -f docker-compose.yml up -d


