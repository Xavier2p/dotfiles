# Completion
source $HOME/.config/zsh/nix-zsh-completions/nix-zsh-completions.plugin.zsh
fpath=(
    ~/.config/zsh/completions
    ~/.config/zsh/nix-zsh-completions
    ~/.config/zsh/zsh-completions
    "${fpath[@]}"
)
autoload -U compinit && compinit

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# partial completion suggestions
zstyle ':completion:*' list-suffixeszstyle ':completion:*' expand prefix suffix

# Correction
setopt CORRECT
setopt CORRECT_ALL

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Users/xavier2p/.nix-profile/bin/terraform terraform

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '\t' autosuggest-accept

prompt_nix_shell_setup "$@"
