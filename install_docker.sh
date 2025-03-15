#!/usr/bin/env bash

if [ $(tput colors) ]; then
	green="\e[32m"
	red="\e[31m"
	endcolor="\e[39m"
fi

clear
echo '=================='
echo '  INSTALL DOCKER  '
echo '=================='

echo;
echo "Install Pre-requisites"

(
  sudo apt-get update && \
  sudo apt-get install ca-certificates curl && \
  sudo install -m 0755 -d /etc/apt/keyrings && \
  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc && \
  sudo chmod a+r /etc/apt/keyrings/docker.asc && \
  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

echo;
echo "Install Docker"
(
  sudo apt update && \
  sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

newgrp docker
sudo usermod -aG docker $USER
