alias refresh="
exec zsh
"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias hw='hwinfo --short'                                   # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l'          # List amount of -git packages

alias la='ls -a'  # all files and dirs
alias ll='ls -l'  # long format
alias lal='ls -al'  # long format
alias lt='ls -aT' # tree listing
alias l.="ls -a | grep -e '^\.'" # show only dotfiles

alias view="nvim -R -M"

