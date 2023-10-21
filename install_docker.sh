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
  sudo apt install apt-transport-https ca-certificates curl software-properties-common -y && \
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

echo;
echo "Install Docker"
(
  sudo apt install -y docker-ce
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

sudo usermod -aG docker $USER
