#!/bin/bash

# Install dependencies
sudo pacman -S --noconfirm ninja-build
sudo pacman -S --noconfirm gettext
sudo pacman -S --noconfirm cmake
sudo pacman -S --noconfirm unzip
sudo pacman -S --noconfirm git
sudo pacman -S --noconfirm curl
# Clone Neovim repo
git clone -b release-0.11 https://github.com/neovim/neovim.git
cd neovim

make CMAKE_BUILD_TYPE=Release
sudo make install
cd ../
rm -rf neovim

stow_PREFIX="${BASH_SOURCE[0]%/*}/"
stow_loc="${stow_PREFIX}/../../../"

cd ${stow_loc} && stow nvim
