#!/usr/bin/env sh

# Remove existing config files

rm ~/.bashrc
rm -rf ~/.config/fish
rm ~/.gitconfig
rm ~/.gitignore_global
rm ~/.zshrc

# Symlink dotfiles

ln -s ~/.dotfiles/.bashrc ~/.bashrc
mkdir ~/.config/fish
ln -s ~/.dotfiles/fish/aliases.fish ~/.config/fish/aliases.fish
ln -s ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s ~/.dotfiles/fish/fishfile ~/.config/fish/fishfile
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/.gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/.zshrc ~/.zshrc