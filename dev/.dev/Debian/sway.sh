#!/bin/bash

# sudo apt install sway bemenu
sudo apt sway bemenu swaybg mako wofi

stow_PREFIX="${BASH_SOURCE[0]%/*}/"
stow_loc="${stow_PREFIX}/../../../"

cd ${stow_loc} && stow sway
