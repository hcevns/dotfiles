# Dotfiles

## Setup

```
# macOS
xcode-select --install
open https://github.com/settings/personal-access-tokens/new
git clone https://github.com/hcevns/dotfiles.git ~/.dotfiles # password = personal access token
sh ~/.dotfiles/install.sh
sh ~/.dotfiles/configure-macos.sh

# Arch Linux
pacman -S git
open https://github.com/settings/personal-access-tokens/new
git clone https://github.com/hcevns/dotfiles.git ~/.dotfiles # password = personal access token
sh ~/.dotfiles/install.sh
sh ~/.dotfiles/configure-arch.sh
```
