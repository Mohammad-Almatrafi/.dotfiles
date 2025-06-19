export ZDOTDIR=$HOME/.config/zsh

sudo apt install zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZDOTDIR}/plugins/zsh-syntax-highlighting"

git clone https://github.com/zsh-users/zsh-autosuggestions "${ZDOTDIR}/plugins/zsh-autosuggestions"

git clone https://github.com/zsh-users/zsh-completions.git "${ZDOTDIR}/plugins/zsh-completions"

