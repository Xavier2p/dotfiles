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

Via HTTPS:

```bash
git clone https://github.com/Xavier2p/dotfiles.git
```

Via SSH:
```bash
git clone git@github.com:Xavier2p/dotfiles.git
```

### 2. Run the install script

```bash
cd dotfiles
./config.sh
```
### 3. Update the `$DOTFILES` variable

In your `~/.zshrc` file, update the `$DOTFILES` variable to the path of the repo.

- For macOS:
```bash
DOTFILES="$HOME/Developer/dotfiles"
```
- For NixOS:
```bash
DOTFILES="$HOME/afs/dotfiles"
```
- For Debian:
```bash
DOTFILES="$HOME/.config/dotfiles"
```
### 4. Install the packages
*Not implemented yet*

### 5. Enjoy!