# Load more completions
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)
fpath=($ZDOTDIR/plugins/conda-zsh-completion/ $fpath)
# Should be called before compinit
zmodload zsh/complist

autoload -Uz bashcompinit
autoload -Uz select-word-style
autoload -Uz zsh/complist
autoload -Uz compinit
compinit

# Enables completion menu with arrow keys
bindkey '^I' expand-or-complete
bindkey '^[[Z' reverse-menu-complete

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


# Color for selected item (reverse video)
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"

zstyle ':completion:*:default' list-colors "di=1;34:fi=0:*.jpg=1;35"

# With zsh-autosuggestions plugin
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
setopt MENU_COMPLETE                   # Required for cycling
setopt AUTO_MENU                       # Autocycle if multiple matches
unsetopt AUTO_LIST                     # Prevent listing all at once
