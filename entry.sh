# RC file, loaded by both BASH and ZSH

DOTFILES=$HOME/.config/dotfiles
source $DOTFILES/.env

LFILE="/etc/*-release"
MFILE="/System/Library/CoreServices/SystemVersion.plist"
if [[ -f $LFILE ]]; then
  _distro=$(awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }')
elif [[ -f $MFILE ]]; then
  _distro="macos"
fi

source $DOTFILES/aliases.zsh
source $DOTFILES/shell_functions.zsh
export STARSHIP_CONFIG=$DOTFILES/starship.toml
