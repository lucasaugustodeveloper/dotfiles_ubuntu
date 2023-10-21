#!/usr/bin/env bash

clear ;
echo "===================================="
echo "      INSTALATION SUBLIME TEXT      "
echo "===================================="

if [ $(tput colors) ]; then
	green="\e[32m"
	red="\e[31m"
	endcolor="\e[39m"
fi

echo ;
echo "INSTALLATION GPG SUBLIME"
(
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  sudo apt install -y apt-transport-https
) &> /dev/null && echo -e "$green INSTALLATION OK  $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "ADD SOURCE LIST SUBLIME TEXT STABLE"
(
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
) &> /dev/null && echo -e "$green INSTALLATION OK  $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION SUBLIME TEXT"
(
  sudo apt update -y && sudo apt install -y sublime-text
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"
