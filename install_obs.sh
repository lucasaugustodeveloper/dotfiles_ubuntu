#! /bin/bash

if [ $(tput colors) ]; then
	green="\e[32m"
	red="\e[31m"
	endcolor="\e[39m"
fi

echo ;
echo "INSTALLATION FFMPEG"
(
  sudo apt-get install -y ffmpeg
) > /dev/null & echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION OBS STUDIO"
(
  sudo add-apt-repository -y ppa:obsproject/obs-studio
  sudo apt-get update && apt-get install obs-studio
) > /dev/null & echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"
