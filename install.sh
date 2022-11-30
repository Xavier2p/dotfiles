# install the extensions for ZSH
git clone https://github.com/zsh-users/zsh-completions ~/.config/zsh/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.config/zsh/zsh-syntax-highlighting

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl -sS https://starship.rs/install.sh | sh

rustup completions zsh > ~/.config/zsh/completions/_rustup
rustup completions zsh cargo > ~/.config/zsh/completions/_cargo
