#!/usr/bin/env bash

clear
echo "============================"
echo "    INSTALATION PROGRAMS    "
echo "============================"

echo;
echo "Pre requisites"
(
  curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg && \
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"


echo ;
echo "Install Spotify"
(
  sudo apt update && \
  sudo apt install -y spotify-client
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"
