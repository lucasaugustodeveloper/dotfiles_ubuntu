#! /bin/bash
clear
echo '=================='
echo '  INSTALL DOCKER  '
echo '=================='

sudo curl -sSL https://get.docker.com | sh
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-linux-x86_64 \
  -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

usermod -aG docker $USER
