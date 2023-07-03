# Entry file, loaded for both BASH and ZSH

DOTFILES=$HOME/.config/dotfiles

# OS detection
LFILE="/etc/*-release"
MFILE="/System/Library/CoreServices/SystemVersion.plist"
if [[ -f $LFILE ]]; then
  _distro=$(awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }')
elif [[ -f $MFILE ]]; then
  _distro="macos"
fi

# Load env
source $DOTFILES/.env
source $DOTFILES/shell/aliases.zsh
source $DOTFILES/shell/ascii.sh
export STARSHIP_CONFIG=$DOTFILES/config/starship.toml
export EDITOR="vim"


TIMEFMT=$'----------------\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'
