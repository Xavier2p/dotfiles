#!/bin/sh

dot_list="bashrc zsh config emacs gitconfig gitignore jnewsrc mozilla msmtprc muttrc signature slrnrc ssh vim vimrc Xdefaults zshrc"


nix profile install nixpkgs#{zsh,bat,nmap,ranger,speedtest-cli,sl,cmatrix,neofetch,nodejs}

for f in $dot_list; do
  rm -rf "$HOME/.$f"
  ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"
done
