#!/bin/bash
current_dir="${BASH_SOURCE[0]%/*}/"
bash ${current_dir}devtools.sh
bash ${current_dir}zsh.sh
bash ${current_dir}yay.sh
bash ${current_dir}fonts.sh
bash ${current_dir}nvim.sh
bash ${current_dir}tmuxifier.sh
bash ${current_dir}sway.sh
bash ${current_dir}yay.sh
bash ${current_dir}essential.sh
bash ${current_dir}hyprland.sh

# source ${current_dir}/riscv.sh

