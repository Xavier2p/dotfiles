# Welcome on my .zshrc !

fpath+=~/.config/zsh/completions/
source $HOME/.config/dotfiles/rcfile
source $DOTFILES/zsh_prompt.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U bashcompinit
bashcompinit

# AUTOLOAD
setopt autocd
if [ -e /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/xavier2p/.nix-profile/etc/profile.d/nix.sh; fi

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '\t' autosuggest-accept

eval "$(starship init zsh)"

if [[ $_distro == "macos" ]]
then
    export PATH=$PATH:/Users/xavier2p/Library/Python/3.10/bin
fi

neofetch
ls
# arch --arch x86_64 <cmd> to exec cmd in arch x86_64
