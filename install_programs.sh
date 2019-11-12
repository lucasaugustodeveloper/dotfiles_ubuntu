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

read graphics
read bundles

echo ;
echo "UPDATE AND UPGRADE SYSTEM"
(
	apt update -y && apt upgrade -y
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

echo ;
echo "INSTALLATION CURL"
	apt install curl -y && apt install -y curl

echo ;
echo "INTALLATION TERMINATOR"
(
	apt install -y terminator
) &> /dev/null && echo -e "$green INSTALLATION  OK $endcolor" || echo -e "$red INSTALLATION  FAILED $endcolor"

echo ;
echo "INSTALLATION SILVER SEARCHER"
(
  apt install -y silversearcher-ag
) &> /dev/null && echo -e "$gren INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION GSTREAMER"
(
	apt install -y gstreamer*
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION VLC"
(
	apt install -y vlc
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INTALLATION GEDIT"
(
	apt install -y gedit
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION CALIBRE"
(
	apt install -y calibre
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION KLAVARO"
(
	apt install -y klavaro
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION SNAPD, GPARTED"
(
	apt install -y snapd gparted
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

if [ graphics -eq true ] then
echo ;
echo "INSTALLATION INKSCAPE, GIMP, KRITA"
(
	apt install -y inkscape gimp krita
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"
fi

echo ;
echo "INSTALLATION OTHER PACKAGES"
(
	apt install -y libindicator3-7 libappindicator1 libindicator-dev
	apt isntall -y libindicator3-dev libindicator7 libindicator3-tools
	apt install -y libnss3-tools fish zsh htop unzip ssh openssh-client
	apt install -y software-properties-common
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION DEVELOPMENT KIT"
(
	apt install -y git zlib1g-dev libssl-dev libreadline-dev libyaml-dev
	apt install -y libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl3
	apt install -y libcurl4-openssl-dev libffi-dev
	apt install -y python-pysqlite2 python-crypto python-paramiko
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

echo ;
echo "INSTALLATION RUBY GEM RUBY-DEV"
(
	apt install -y ruby rubygems ruby-dev
	echo "gem: --no-rdoc --no-ri" >> ~/.gemrc
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"

if [ bundles -eq true ] then
echo ;
echo "INSTALLATION Bundler, Sass, Jekyll"
(
	gem install bundler sass jekyll
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"
fi

if [ kvm -eq true ] then
echo ;
echo "INSTALLATION KVM"
(
	apt-get install -y qemu-kvm libvirt-bin virtinst bridge-utils cpu-checker
) &> /dev/null && echo -e "$green UPDATE OK $endcolor" || echo -e "$red UPDATE FAILED $endcolor"
fi

./install_sublime.sh
