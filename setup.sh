#!/bin/sh

sudo apt install -y zsh fzf

# script directory

cp .config/ ~/.config
cp .zsh* ~

cd ~

curl -L git.io/antigen > .antigen.zsh
curl -sS https://starship.rs/install.sh | sh
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

rm -rf "$(dirname "$(dirname "$0")")"