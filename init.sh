#!/usr/bin/env sh

# Add submodules (e.g. zsh plugins)

(cd ~/.dotfiles && git submodule init && git submodule update)

# Remove existing config files

rm ~/.editorconfig
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.hyper.js
rm -rf ~/.zsh
rm ~/.zshrc

# Symlink dotfiles

ln -s ~/.dotfiles/.editorconfig ~/.editorconfig
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/.gitignore ~/.gitignore
ln -s ~/.dotfiles/hyper/.hyper.js ~/.hyper.js
ln -s ~/.dotfiles/zsh/.zsh ~/.zsh
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc