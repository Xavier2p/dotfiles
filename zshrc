# Welcome on my .zshrc !

DOTFILES=/Users/xavier2p/Developer/dotfiles

source $DOTFILES/zsh_prompt.sh
source $DOTFILES/shell_alias.sh
source $DOTFILES/shell_functions.sh
source ~/Developer/packages/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/Developer/packages/zsh-autosuggestions/zsh-autosuggestions.zsh

# AUTOLOAD
setopt autocd
if [ -e /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh; fi
neofetch

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '\t' autosuggest-accept
