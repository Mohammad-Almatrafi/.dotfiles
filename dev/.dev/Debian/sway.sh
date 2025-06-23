#!/bin/bash

sudo apt install sway bemenu

stow_PREFIX="${BASH_SOURCE[0]%/*}/"
stow_loc="${stow_PREFIX}/../../../"

cd ${stow_loc} && stow sway
