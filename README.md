```text
██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
```

# `dotfiles`

> This repo store all (or almost) my dotfiles.

## Installation

### 1. Clone this repo

```bash
git clone git@github.com:Xavier2p/dotfiles.git ~/.config/dotfiles && cd ~/.config/dotfiles
```

### 2. Run the install script

```bash
make
```

### 3. Reload your shell

```bash
source ~/.zshrc
```

## Tree

```txt
~
├── .config
│   ├── dotfiles
│   │   ├── config
│   │   │   ├── alacritty.yml    => ~/.config/alacritty/alacritty.yml
│   │   │   ├── conf.vim         => ~/.vimrc
│   │   │   ├── git.conf         => ~/.gitconfig
│   │   │   ├── global.gitignore
│   │   │   ├── neofetch.conf    => ~/.config/neofetch/config.conf
│   │   │   └── starship.toml
│   │   ├── plugins
│   │   │   └── codestats
│   │   ├── scripts
│   │   │   ├── config.sh
│   │   │   ├── install.sh
│   │   │   └── update.sh
│   │   ├── shell
│   |   |   ├── aliases.zsh
│   │   │   ├── ascii.sh
│   │   │   ├── completion.zsh
│   │   │   ├── entry.bash      => ~/.bashrc
│   |   |   ├── entry.sh
│   │   │   └── entry.zsh       => ~/.zshrc
│   │   ├── Makefile
│   │   └── README.md
│   ├── packages
│   │   └── ...
│   ├── zsh
|   |   ├── nix-zsh-completions
│   │   ├── zsh-autosuggestions
│   │   ├── zsh-completions
│   │   └── zsh-syntax-highlighting
│   └── ...
└── ...
```
