COSTUM_CONFIG_PATH="${funcsourcetrace[1]%/*}"

safe_source() {
  local file="$1"
  
  if [[ ! -f "$file" ]]; then
    return
  fi

    source "$file"
}

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git 
    zsh-syntax-highlighting 
    zsh-autosuggestions
    web-search
    zsh-history-substring-search
    you-should-use
)

source $ZSH/oh-my-zsh.sh

safe_source ${COSTUM_CONFIG_PATH}/aliasses.sh
safe_source ${COSTUM_CONFIG_PATH}/keybinds.sh

safe_source ${COSTUM_CONFIG_PATH}/wallpapers.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$PATH:/opt/riscv/bin"
export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"

eval "$(tmuxifier init -)"
