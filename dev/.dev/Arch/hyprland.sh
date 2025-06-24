#!/bin/bash

pacman -S hyprland wofi waybar


stow_PREFIX="${BASH_SOURCE[0]%/*}/"
stow_loc="${stow_PREFIX}/../../../"

cd ${stow_loc} && stow hyprland

