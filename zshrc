# Welcome on my .zshrc !

source $DOTFILES/zsh_prompt.sh
source $DOTFILES/shell_alias.sh
source $DOTFILES/shell_functions.sh

# AUTOLOAD
setopt autocd
if [ -e /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh; fi
neofetch
