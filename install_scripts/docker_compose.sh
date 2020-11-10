#!/bin/bash
# DevOps training 2019 - Peter Mikaczo
# https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/centos/#upgrade-docker-ce-1

#Var(s)
VERSION="1.23.2"

sudo curl -L "https://github.com/docker/compose/releases/download/$VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose