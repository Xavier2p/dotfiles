# GIT Integration
autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       '%F{red}]-[%f%F{227} %s:%b%m%u%c%f'
zstyle ':vcs_info:git:*' actionformats '%F{red}]-[%f%F{227} %s%b%m%u%c%f%F{red}]
->[%f%F{227}%a%f'

# Choose the right icon
case $_distro in
    *kali*)                  ICON="ﴣ";;
    *arch*)                  ICON="";;
    *debian*)                ICON="";;
    *raspbian*)              ICON="";;
    *ubuntu*)                ICON="";;
    *elementary*)            ICON="";;
    *fedora*)                ICON="";;
    *coreos*)                ICON="";;
    *gentoo*)                ICON="";;
    *mageia*)                ICON="";;
    *centos*)                ICON="";;
    *opensuse*|*tumbleweed*) ICON="";;
    *sabayon*)               ICON="";;
    *slackware*)             ICON="";;
    *linuxmint*)             ICON="";;
    *alpine*)                ICON="";;
    *aosc*)                  ICON="";;
    *nixos*)                 ICON="";;
    *devuan*)                ICON="";;
    *manjaro*)               ICON="";;
    *rhel*)                  ICON="";;
    *macos*)                 ICON="";;
    *)                       ICON="\r\n";;
esac

# Set the prompt
PROMPT='%F{red}┌─[%f%F{214}%n%f%F{red}${ICON}%f%F{010}MacBookAirM1%f%F{red}]-[%f%F{014} %B%1~%b%f${vcs_info_msg_0_}%F{red}]%f
%F{red}└[%f%h%F{red}] %B%(?.%F{green}.%F{009})%(!.#.)%f%b '
RPROMPT='%F{red}[%f%w%F{red}]-[%f%T%F{red}]%f'

export STARSHIP_DISTRO="$ICON"

# Completion
autoload -Uz compinit && compinit

# case insensitive path-completion 
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# partial completion suggestions
zstyle ':completion:*' list-suffixes zstyle ':completion:*' expand prefix suffix

# Correction
setopt CORRECT
setopt CORRECT_ALL
