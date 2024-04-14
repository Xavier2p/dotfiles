if [[ $_distro == "macos" ]]
then # Only for macOS
    # cd
    # alias cdal='cd ~/OneDrive\ -\ EPITA/Algo/S3/doublets'
    alias cdev='cd ~/Developer'
    alias cdo='cd /Users/xavier2p/Documents/πK嘘'
    alias cdp='cd /Users/xavier2p/OneDrive\ -\ EPITA/projects/S3-OCR'
    alias cdrs='cd /Users/xavier2p/Developer/rust'
    alias dl='cd ~/Movies/dl/'

    # programs
    alias adb='~/.adb/adb'
    alias code='open -a "Visual Studio Code"'
    alias fastboot='~/.adb/fastboot'
    alias ls='lsd'
    alias mariadb='docker exec -it mariadb mariadb -u root -p'
    alias ql='qlmanage -p'
    alias tree='ls --tree'
    alias cplt='gh copilot'

    # others
    alias bell='while true; do tput bel; done'
    alias "nixos-rebuild"='echo rebuilding in progress...'
    alias brewpdate='brew update && brew upgrade && brew cleanup --prun=all --verbose'
    alias ssh='/opt/homebrew/bin/ssh'
else # Only for Linux
    alias bat='batcat'
    alias ifconfig='/sbin/ifconfig'
    alias ls='ls --color=auto'
    alias startserv='py -m http.server'
    alias temp='vcgencmd measure_temp'
    # alias neofetch='neofetch --ascii_distro raspbian'
fi

## Update files
alias mk='vim Makefile'
alias rc='echo "$ZSHRC"; vim ~/.zshrc; source ~/.zshrc'
alias rca='echo "$ALIASES"; vim $DOTFILES/shell/aliases.zsh; source ~/.zshrc'
alias rcc='echo "$COMPLETIONS"; vim $DOTFILES/shell/completions.zsh; source ~/.zshrc'
alias vrc='echo "$VIM"; vim ~/.vimrc'

## ls
alias l='ls -lh'
alias la='ls -Ah'
alias lll='ls -Ahl'
alias ll='ls -l'

## git
alias gaa='git add -A'
alias gau='git add --update'
alias gb='git branch'
alias gc='git commit'
alias gl='git log --all --decorate --oneline --graph'
alias gls='git ls-files'
alias gp='git pull; gl -n 10'
alias gpsh='git push'
alias grl='git reflog -n 10'
alias gst='git status'
alias gsw='git switch'

## shortners
alias dk='docker'
alias dkc='docker compose'
alias kb='kubectl'
alias make='make -Bj'
alias py='/opt/homebrew/bin/python3'
alias pip='/opt/homebrew/bin/pip3'
alias tf='terraform'

## misc
alias ':q'='exit'
alias cdot='cd $DOTFILES'
alias clonetp='~/scripts/clonetp.sh'
alias neobzh='neofetch --ascii_distro trisquel'
alias neoredhat='neofetch --ascii_distro redhat'
alias netscan='echo -e "\e[5m\e[91mScanning Network...\e[25m\e[39m"; nmap -sP 192.168.1.0-255'
alias reseterm='clear && neoredhat && cd'
alias sl='sl -e5'
alias vimexam='vim -u vimrc'
alias vimini='vim -u ~/.viminirc'

function cd {
    builtin cd "$@" && ls
}
