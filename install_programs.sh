#!/bin/bash

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

echo "Instalar pacote bundle sass, jekyll é middleman para sites estáticos?"
read bundles

echo "Instalar pacote KVM para desenvolvimento android?"
read kvm

clear
echo ;
echo "UPDATE AND UPGRADE SYSTEM"
(
	sudo apt update -y && sudo apt upgrade -y
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

echo ;
echo "INTALLATION TERMINATOR"
(
	sudo apt install -y terminator
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
echo "INSTALLATION KLAVARO"
(
	sudo apt install -y klavaro
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION SNAPD, GPARTED"
(
	sudo apt install -y snapd gparted
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
	sudo apt install -y libindicator3-7 libappindicator1 libindicator-dev
	sudo apt install -y libindicator3-dev libindicator7 libindicator3-tools
	sudo apt install -y libnss3-tools fish zsh htop unzip ssh openssh-client
	sudo apt install -y software-properties-common
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION DEVELOPMENT KIT"
(
	sudo apt install -y git zlib1g-dev libssl-dev libreadline-dev libyaml-dev
	sudo apt install -y libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl3
	sudo apt install -y libcurl4-openssl-dev libffi-dev
	sudo apt install -y python-pysqlite2 python-crypto python-paramiko
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

echo ;
echo "INSTALLATION RUBY GEM RUBY-DEV"
(
	sudo apt install -y ruby rubygems ruby-dev
	echo "gem: --no-rdoc --no-ri" >> ~/.gemrc
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

if [ $bundles -eq "y" ]; then
echo ;
echo "INSTALLATION Bundler, Sass, Jekyll"
(
	sudo gem install bundler sass jekyll
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"
fi

if [ $kvm -eq "y" ]; then
echo ;
echo "INSTALLATION KVM"
(
	sudo apt install -y qemu-kvm libvirt-bin virtinst bridge-utils cpu-checker
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"
fi
