#!/bin/bash

sudo pacman -S --noconfirm sway bemenu swaybg mako wofi

stow_PREFIX="${BASH_SOURCE[0]%/*}/"
stow_loc="${stow_PREFIX}/../../../"

cd ${stow_loc} && stow sway
