#!/bin/bash

# CAMINHO_DESTINO=/usr/local/bin
CAMINHO_DESTINO=~/bin/docker
rm -rf ${CAMINHO_DESTINO}
mkdir -p ${CAMINHO_DESTINO}

DOCKER_VERSION="29.1.3"
wget "https://download.docker.com/linux/static/stable/$(uname -m)/docker-${DOCKER_VERSION}.tgz"
wget "https://download.docker.com/linux/static/stable/$(uname -m)/docker-rootless-extras-${DOCKER_VERSION}.tgz"

tar --overwrite -xf docker-${DOCKER_VERSION}.tgz -C ${CAMINHO_DESTINO} --strip-components=1
tar --overwrite -xf docker-rootless-extras-${DOCKER_VERSION}.tgz -C ${CAMINHO_DESTINO} --strip-components=1
rm -rf docker-${DOCKER_VERSION}.tgz
rm -rf docker-rootless-extras-${DOCKER_VERSION}.tgz

# CAMINHO_DESTINO=/usr/local/lib/docker/cli-plugins
CAMINHO_DESTINO=~/.docker/cli-plugins
rm -rf ${CAMINHO_DESTINO}
mkdir -p ${CAMINHO_DESTINO}

DOCKER_COMPOSE_VERSION="5.0.1"
curl -SL https://github.com/docker/compose/releases/download/v${DOCKER_COMPOSE_VERSION}/docker-compose-linux-$(uname -m) -o ${CAMINHO_DESTINO}/docker-compose
chmod +x ${CAMINHO_DESTINO}/docker-compose

sudo groupadd docker
sudo usermod -aG docker $USER

systemctl --user start docker

docker --version
docker compose version