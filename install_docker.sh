#!/usr/bin/env bash

curl -fsSL https://get.docker.com/ | sh
sudo groupadd docker
sudo usermod -aG docker ${USER}
sudo systemctl restart docker

curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version
