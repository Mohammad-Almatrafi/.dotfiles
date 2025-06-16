source "/home/rur1k/.config/zsh/zshConfig.sh"

export TERMINAL=wezterm
export EDITOR=nvim

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



export PATH="$HOME/.platformio/penv/bin:$PATH"

