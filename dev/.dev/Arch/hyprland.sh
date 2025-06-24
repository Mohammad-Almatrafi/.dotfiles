#!/bin/bash

sudo pacman -S --noconfirm hyprland wofi waybar hyprpaper

stow_PREFIX="${BASH_SOURCE[0]%/*}/"
stow_loc="${stow_PREFIX}/../../../"

cd ${stow_loc} && stow hyprland

