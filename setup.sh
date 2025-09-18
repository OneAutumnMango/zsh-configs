#!/bin/sh

sudo apt update
sudo apt install -y zsh fzf

cp -r .config/ ~/.config
cp .zsh* ~

SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
cd ~

curl -L git.io/antigen > .antigen.zsh
curl -sS https://starship.rs/install.sh | sh -s -- -y
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

rm -rf "$SCRIPT_DIR"
