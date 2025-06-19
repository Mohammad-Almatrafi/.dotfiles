autoload -U compinit; compinit

safe_source() {
  local file="$1"
  
  if [[ ! -f "$file" ]]; then
    return
  fi

    source "$file"
}

source ${ZDOTDIR}/aliasses.sh

source "${ZDOTDIR}/theme-and-appearance.zsh"
source "${ZDOTDIR}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${ZDOTDIR}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

source ${ZDOTDIR}/prompt.sh

export PATH="$PATH:/opt/riscv/bin"
export PATH="$HOME/.tmuxifier/bin:$PATH"

eval "$(tmuxifier init -)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/rur1k/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/rur1k/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/rur1k/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/rur1k/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

