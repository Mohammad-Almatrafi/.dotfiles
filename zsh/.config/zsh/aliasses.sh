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
alias update='sudo cachyos-rate-mirrors && sudo pacman -Syu'

alias ls='ls -al  --color=auto' # preferred listing
alias la='ls -a  --color=auto'  # all files and dirs
alias ll='ls -l --color=auto'  # long format
alias lt='ls -aT --color=auto' # tree listing
# alias l.="ls -a | grep -e '^\.'" # show only dotfiles

