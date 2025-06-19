safe_source() {
  local file="$1"
  
  if [[ ! -f "$file" ]]; then
    return
  fi

    source "$file"
}

export TMUXIFIER=$XDG_CONFIG_HOME/tmuxifier

source ${ZDOTDIR}/aliasses.sh
source "${ZDOTDIR}/theme-and-appearance.zsh"
source "${ZDOTDIR}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${ZDOTDIR}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "${ZDOTDIR}/completion.zsh"

source ${ZDOTDIR}/prompt.sh

export PATH="$PATH:/opt/riscv/bin"
export PATH="$XDG_CONFIG_HOME/tmuxifier/bin:$PATH"
export PATH="$HOME/.platformio/penv/bin:$PATH"


# >>> conda initialize >>>

__conda_setup="$('/home/rur1k/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
eval "$__conda_setup"
export PATH="$HOME/miniconda3/bin:$PATH"
unset __conda_setup

# <<< conda initialize <<<

eval "$(tmuxifier init -)"
