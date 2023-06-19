# Welcome on my .zshrc !

# Enable Plugins
source $HOME/.config/dotfiles/shell/entry.sh
source $DOTFILES/shell/completions.zsh
source $DOTFILES/plugins/codestats.plugin.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
setopt autocd

eval "$(starship init zsh)"

if [[ $_distro == "macos" ]]
then
    export C_INCLUDE_PATH=/usr/local/include
    export CPLUS_INCLUDE_PATH=/usr/local/include
    export LIBRARY_PATH=/usr/local/lib
fi


# Auto load
neofetch
ls
# arch --arch x86_64 <cmd> to exec cmd in arch x86_64

