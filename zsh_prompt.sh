autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       '%F{red}]-[%f%F{227}%s:%b%m%u%c%f'
zstyle ':vcs_info:git:*' actionformats '%F{red}]-[%f%F{227}%s:%b%m%u%c%f%F{red}]
->[%f%F{227}%a%f'

PROMPT='%F{red}┌─[%f%F{214}%n%f%F{red}%f%F{010}MacBookAirM1%f%F{red}]-[%f%F{014}%B%1~%b%f${vcs_info_msg_0_}%F{red}]%f
%F{red}└[%f%h%F{red}]-[%f%B%#%b%F{red}]%f %F{green}>%f '
RPROMPT='%F{red}[%f%w%F{red}]-[%f%T%F{red}]%f'
# PROMPT='%n@%m %1~ %#'