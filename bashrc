# Welcome on my .bashrc !

DOTFILES=~/Developer/dotfiles
export BASH_SILENCE_DEPRECATION_WARNING=1

source $DOTFILES/shell_alias.sh
source $DOTFILES/shell_functions.sh


PS1='\e[31m┌─[\e[93m\u\e[31m@\e[0;32m\h\e[31m]-[\e[1m\e[96m\W\e[m\e[31m]\e[39m\n\e[31m└[\e[39m\#\e[31m]-[\e[39m\$\e[31m]\e[32m >\e[39m '
    # PS1='\e[31m[\e[93meagle\e[31m@\e[32m42sh \e[1m\e[96m\W\e[m\e[31m]\e[39m\n=> \$ '

. "$HOME/.cargo/env"
