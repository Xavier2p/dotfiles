# Welcome on my .bashrc !

export BASH_SILENCE_DEPRECATION_WARNING=1
source $HOME/.config/dotfiles/shell/entry.sh

# PS1='\e[31m┌─[\e[93m\u\e[31m@\e[0;32m\h\e[31m]-[\e[1m\e[96m\W\e[m\e[31m]\e[39m\n\e[31m└[\e[39m\#\e[31m]-[\e[39m\$\e[31m]\e[32m >\e[39m '

eval "$(starship init bash)"