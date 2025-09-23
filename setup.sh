#!/bin/sh

set -e

sudo apt update
sudo apt install -y zsh fzf git tree nano bind9-dnsutils

TMPDIR=$(mktemp -d)
curl -L https://github.com/OneAutumnMango/zsh-configs/archive/refs/heads/main.tar.gz -o "$TMPDIR/zsh-configs.tar.gz"
tar -xzf "$TMPDIR/zsh-configs.tar.gz" -C "$TMPDIR"

REPO_DIR="$TMPDIR/zsh-configs-main"

cp $REPO_DIR/.zsh* ~/
cp -r $REPO_DIR/.config/ ~/.config
cp $REPO_DIR/.gitconfig ~/.gitconfig

curl -L git.io/antigen > ~/.antigen.zsh
curl -sS https://starship.rs/install.sh | sh -s -- -y
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

rm -rf "$TMPDIR"
