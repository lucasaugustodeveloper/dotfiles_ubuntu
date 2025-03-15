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

echo ;
echo "INSTALLATION OTHER PACKAGES"
(
	sudo apt install -y libindicator3-7 libindicator-dev && \
		libindicator3-dev libindicator7 libindicator3-tools && \
		libnss3-tools fish zsh htop unzip ssh openssh-client && \
		software-properties-common
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo ;
echo "INSTALLATION DEVELOPMENT KIT"
(
	sudo apt install -y git zlib1g-dev libssl-dev libreadline-dev libyaml-dev
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
