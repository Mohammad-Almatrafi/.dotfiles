#!/bin/bash

sudo pacman -S --nconfirm zsh
stow_PREFIX="${BASH_SOURCE[0]%/*}/"
stow_loc="${stow_PREFIX}/../../../"

cd ${stow_loc} && stow zsh

git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZDOTDIR}/plugins/zsh-syntax-highlighting"

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git "${ZDOTDIR}/plugins/zsh-autosuggestions"

git clone --depth=1 https://github.com/zsh-users/zsh-completions.git "${ZDOTDIR}/plugins/zsh-completions"

git clone --depth=1 https://github.com/conda-incubator/conda-zsh-completion.git "${ZDOTDIR}/plugins/conda-zsh-completion"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZDOTDIR}/plugins/powerlevel10k"


chsh -S /bin/zsh
