# MACOS ALIASES
if [[ $_distro == "macos" ]]
then
    alias bell='while true; do tput bel; done'
    alias startnix='nix-shell -p ripgrep'
    alias cdo='cd ~/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/Pikachu'
    alias ssh_int='ssh eagle@192.168.1.71'
    alias ssh_ext='ssh eagle@77.206.29.248'
    alias note='~/.tests/notetakingcli/main.sh'
    alias cdrs='cd /Users/xavier2p/Documents/42.\ prog/rust'
    alias adb='~/.adb/adb'
    alias fastboot='~/.adb/fastboot'
    alias code='open -a "Visual Studio Code"'
    alias pycharm='open -a "PyCharm"'
    alias cdev='cd ~/Developer'
    alias cdal='cd ~/OneDrive\ -\ EPITA/Algo/S3/prefix_trees'
    alias dl='cd ~/Movies/dl/'
    alias cdp='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S3-OCR'
elif [[ $_distro == "raspbian" || $_distro == "debian" ]]
then
    alias bat='batcat'
    alias ifconfig='/sbin/ifconfig'
    alias temp='vcgencmd measure_temp'
    alias startserv='py -m http.server'
    alias neofetch='neofetch --ascii_distro raspbian'
fi

# GLOBAL ALIASES
alias rca='vim $DOTFILES/shell_alias.zsh; source ~/.zshrc'
alias l='ls -lh'
alias ls='lsd'
alias la='ls -Ah'
alias ll='ls -l --header'
alias lal='la -l --header'
alias rc='echo "$ZSHRC"; vim ~/.zshrc; source ~/.zshrc'
alias vrc='echo "$VIM"; vim ~/.vimrc'
alias netscan='echo -e "\e[5m\e[91mScanning Network...\e[25m\e[39m"; nmap -sP 192.168.1.0-255'
alias mk='vim Makefile'
alias sl='sl -e'
alias gst='git status'
alias gp='git pull; grl'
alias gaa='git add -A'
alias gau='git add --update'
alias grl='git reflog -n 10'
alias gls='git ls-files'
alias gsync='$DOTFILES/scripts/gitsync.sh'
alias tree='ls --tree'
alias neoredhat='neofetch --ascii_distro redhat'
alias epita='docker run --rm -ti registry.cri.epita.fr/cri/infrastructure/nixpie/nixos-spe:latest bash'
alias py='/usr/local/bin/python3'
alias rcf='vim $DOTFILES/shell_functions.zsh; source ~/.zshrc'
alias rcp='vim $DOTFILES/zsh_prompt.zsh; source ~/.zshrc'
alias vimexam='vim -u vimrc'
alias vimini='vim -u ~/.viminirc'
alias reseterm='clear && neoredhat && cd'
alias make='make -Bj'
alias dkr='docker'
