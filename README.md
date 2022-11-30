# ~/.dotfiles

```
██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
```

This repo store all (or almost) my dotfiles.

## Installation

### 1. Clone this repo

```bash
git clone git@github.com:Xavier2p/dotfiles.git ~/.config/dotfiles
```

### 2. Run the install script

```bash
cd ~/.config/dotfiles
make
```

### 3. Reload your shell

```bash
source ~/.zshrc
```

### 5. Enjoy!

## Tree

```txt
~
├── .config
│   ├── dotfiles
│   │   ├── alacritty.yml   => ~/.config/alacritty/alacritty.yml
│   │   ├── bashrc          => ~/.bashrc
│   │   ├── gitconfig       => ~/.gitconfig
│   │   ├── gitignore       => ~/.gitignore
│   │   ├── gtk3.0.ini      => ~/.config/gtk-3.0/settings.ini
│   │   ├── lsd.yaml        => ~/.config/lsd/config.yaml
│   │   ├── neofetch.conf   => ~/.config/neofetch/config.conf
│   │   ├── vimrc           => ~/.vimrc
│   │   └── zshrc           => ~/.zshrc
│   ├── nvim
│   │   └── ...
│   ├── packages
│   │   └── ...
│   ├── zsh
│   │   ├── zsh-autosuggestions
│   │   ├── zsh-completions
│   │   └── zsh-syntax-highlighting
│   └── ...
└── ...
```
