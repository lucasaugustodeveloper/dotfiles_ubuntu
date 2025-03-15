#!/usr/bin/env bash

clear
echo "============================"
echo "     INSTALLATION FONTS     "
echo "============================"

echo;
echo "DOWNLOADS FONTS NERD FONT"
(
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Agave.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/AurulentSansMono.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaCode.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CodeNewRoman.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaMono.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FantasqueSansMono.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/GeistMono.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hack.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hasklig.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hermit.tar.xz  && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Iosevka.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Meslo.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Monofur.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Mononoki.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/RobotoMono.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/SourceCodePro.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/VictorMono.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/ZedMono.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Arimo.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/EnvyCodeR.tar.xz && \
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hermit.tar.xz
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo;
echo "INSTALL FONTS"
(
  tar -xf FiraCode.tar.xz -C $HOME/.fonts && \
  tar -xf Agave.tar.xz -C $HOME/.fonts && \
  tar -xf AurulentSansMono.tar.xz -C $HOME/.fonts && \
  tar -xf CascadiaCode.tar.xz -C $HOME/.fonts && \
  tar -xf CodeNewRoman.tar.xz -C $HOME/.fonts && \
  tar -xf CascadiaMono.tar.xz -C $HOME/.fonts && \
  tar -xf FantasqueSansMono.tar.xz -C $HOME/.fonts && \
  tar -xf GeistMono.tar.xz -C $HOME/.fonts && \
  tar -xf Hack.tar.xz -C $HOME/.fonts && \
  tar -xf Hasklig.tar.xz -C $HOME/.fonts && \
  tar -xf Hermit.tar.xz  -C $HOME/.fonts && \
  tar -xf Iosevka.tar.xz -C $HOME/.fonts && \
  tar -xf JetBrainsMono.tar.xz -C $HOME/.fonts && \
  tar -xf Meslo.tar.xz -C $HOME/.fonts && \
  tar -xf Monofur.tar.xz -C $HOME/.fonts && \
  tar -xf Mononoki.tar.xz -C $HOME/.fonts && \
  tar -xf RobotoMono.tar.xz -C $HOME/.fonts && \
  tar -xf SourceCodePro.tar.xz -C $HOME/.fonts && \
  tar -xf VictorMono.tar.xz -C $HOME/.fonts && \
  tar -xf ZedMono.tar.xz -C $HOME/.fonts && \
  tar -xf Arimo.tar.xz -C $HOME/.fonts && \
  tar -xf EnvyCodeR.tar.xz -C $HOME/.fonts && \
  tar -xf Hermit.tar.xz -C $HOME/.fonts
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"

echo;
echo "CLEAN FONTS"
(
  rm *.tar.*
) &> /dev/null && echo -e "$green INSTALLATION OK $endcolor" || echo -e "$red INSTALLATION FAILED $endcolor"
