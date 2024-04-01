#!/usr/bin/env bash
#

if [ $(tput colors) ]; then
  green="\e[32m"
  red="\e[31m"
  endcolor="\e[39m"
fi

clear
echo "==============================="
echo "        INSTALL BROWSERS       "
echo "==============================="


echo;
echo "Brave"
(
  sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && \
  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && \
  sudo apt update && \
  sudo apt install brave-browser -y
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

