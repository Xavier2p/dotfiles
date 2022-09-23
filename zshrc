# Welcome on my .zshrc !

DOTFILES=/Users/xavier2p/Developer/dotfiles

source $DOTFILES/zsh_prompt.sh
source $DOTFILES/shell_aliases.sh
source $DOTFILES/shell_functions.sh

# AUTOLOAD
setopt autocd
if [ -e /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh; fi
neofetch
