#!/usr/bin/env sh

# Remove existing config files

rm ~/.bashrc
rm -rf ~/.config/fish
rm ~/.gitconfig
rm ~/.gitignore_global
rm -rf ~/.config/karabiner
rm ~/.zshrc

# Symlink dotfiles

ln -s ~/.dotfiles/.bashrc ~/.bashrc
mkdir -p ~/.config/fish
ln -s ~/.dotfiles/fish/aliases.fish ~/.config/fish/aliases.fish
ln -s ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s ~/.dotfiles/fish/fish_plugins ~/.config/fish/fish_plugins
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/.gitignore_global ~/.gitignore_global
mkdir -p ~/.config/karabiner
ln -s ~/.dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
ln -s ~/.dotfiles/.zshrc ~/.zshrc