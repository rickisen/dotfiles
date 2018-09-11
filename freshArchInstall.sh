#!/bin/bash

# Script for automatically installing all
# packages I need on a fresh os install

# Booting =====================================
#
# pacman -S grub efibootmgr intel-ucode

# Basic system ======================
#
# pacman -S \
#   sudo \
#   dialog \
#   wpa_supplicant \
#   linux-headers

# System managment ======================
#
pacman -S \
  grml-zsh-config \
  zsh \
  tmux \
  ranger \
  w3m \
  vim \
  git \
  base-devel

# GPU drivers =================================
#
# intel:
# pacman -S xf86-video-intel mesa

# Fonts =======================================
#
pacman -S \
  ttf-liberation \
  ttf-roboto \
  ttf-ubuntu-font-family \
  font-bh-ttf \
  powerline-fonts \
  adobe-source-code-pro-fonts \
  adobe-source-sans-pro-fonts

# Audio setup =================================
#
pacman -S \
  pulseaudio \
  pulseaudio-alsa \
  pulseaudio-bluetooth \
  pulsemixer \
  pasystray \
  pavucontrol 

# Xorg ==============================
#
pacman -S \
  xorg \
  xorg-xinit

# Gnome =======================================
#
pacman -S \
  gnome 

# i3 ==========================================
#
pacman -S \
  i3-gaps \
  i3lock \
  i3status 

# Sway ========================================
#
pacman -S \
  sway \
  dmenu \
  i3status 

# General Apps ================================
#
pacman -S \
  kitty \
  htop \
  qutebrowser \
  rofi \
  dunst \
  keynav \
  unclutter \
  feh \
  xautolock

# Aur / yay ===================================
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si
# cd ..
# # rm -r yay
# 
# yay -S \
#   alacritty-terminfo-git \
#   alacritty
