# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

make_dirs_files() {
  
  if [[ ! -f ${ZDOTDIR}/.unconsisstent_config.sh ]]; then
    touch ${ZDOTDIR}/.unconsisstent_config.sh
  fi

}

export TMUXIFIER=$XDG_CONFIG_HOME/tmuxifier

source ${ZDOTDIR}/aliasses.sh
source "${ZDOTDIR}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${ZDOTDIR}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "${ZDOTDIR}/completion.zsh"

source "${ZDOTDIR}/plugins/powerlevel10k/powerlevel10k.zsh-theme"

export PATH="$XDG_CONFIG_HOME/tmuxifier/bin:$PATH"


# >>> conda initialize >>>

__conda_setup="$('/home/rur1k/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
eval "$__conda_setup"
export PATH="$HOME/miniconda3/bin:$PATH"
# export PATH="$HOME/miniconda3/bin:$PATH"
unset __conda_setup

# <<< conda initialize <<<

eval "$(tmuxifier init -)"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH=$PATH:/home/rur1k/.spicetify
