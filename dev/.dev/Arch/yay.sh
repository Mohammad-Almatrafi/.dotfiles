#!/bin/bash
sudo pacman -S --needed --noconfirm base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd .. && rm -rf yay
