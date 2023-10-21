#!/usr/bin/env bash

clear
echo "============================"
echo "    INSTALATION PROGRAMS    "
echo "============================"

if [ $(tput colors) ]; then
	green="\e[32m"
	red="\e[31m"
	endcolor="\e[39m"
fi

echo "Instalar pacotes gráficos como: gimp, inkscape é krita?"
read graphics

echo "Instalar pacote KVM para desenvolvimento android?"
read kvm

clear
echo ;
echo "UPDATE AND UPGRADE SYSTEM"
(
	sudo apt update -y && sudo apt upgrade -y
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

echo ;
echo "INTALLATION TERMINATOR, ALACRITTY"
(
	sudo apt install -y terminator alacritty
) &> /dev/null && echo -e "$green INSTALLATION  OK $endcolor" || echo -e "$red INSTALLATION  FAILED $endcolor"

echo ;
echo "INSTALLATION SILVER SEARCHER"
(
  sudo apt install -y silversearcher-ag
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION GSTREAMER"
(
	sudo apt install -y gstreamer*
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION VLC"
(
	sudo apt install -y vlc
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INTALLATION GEDIT"
(
	sudo apt install -y gedit
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION CALIBRE"
(
	sudo apt install -y calibre
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION GPARTED"
(
	sudo apt install -y gparted
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

if [ $graphics -eq "y" ]; then
echo ;
echo "INSTALLATION INKSCAPE, GIMP, KRITA"
(
	sudo apt install -y inkscape gimp krita
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"
fi

echo ;
echo "INSTALLATION OTHER PACKAGES"
(
	sudo apt install -y libindicator3-7 libappindicator1 libindicator-dev && \
		libindicator3-dev libindicator7 libindicator3-tools && \
		libnss3-tools fish zsh htop unzip ssh openssh-client && \
		software-properties-common
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION DEVELOPMENT KIT"
(
	sudo apt install -y git zlib1g-dev libssl-dev libreadline-dev libyaml-dev && \
		libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl3 && \
		libcurl4-openssl-dev libffi-dev
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

echo ;
echo "INSTALLATION KVM"
(
	sudo apt install -y qemu-kvm && \
		libvirt-bin && \
		virtinst && \
		bridge-utils && \
		cpu-checker
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

echo;
echo "Github CLI"
(
  type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
  curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
  && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
  && sudo apt update \
  && sudo apt install gh -y
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

