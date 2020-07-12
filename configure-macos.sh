#!/usr/bin/env sh

# Install package manager

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install applications

brew install \
  bat \
  elixir \
  fd \
  fish \
  git \
  go \
  httpie \
  kotlin \
  # mas \
  r \
  ripgrep \
  rustup \
  sk \
  tldr \
  xsv \
  youtube-dl

brew cask install \
  bitwarden \
  dotnet-sdk \
  figma \
  firefox \
  firefox-developer-edition \
  font-jetbrains-mono \
  google-chrome-dev \
  insomnia \
  julia \
  karabiner-elements \
  microsoft-edge-dev \
  microsoft-office \
  microsoft-teams \
  notion \
  obs \
  rectangle \
  safari-technology-preview \
  visual-studio-code-insiders \
  vlc \
  vmware-horizon-client \
  zoomus

# Configure git

echo -n "Email:"
read email
git config --global user.email "$email"
echo -n "Name:"
read name
git config --global user.name "$name"

# Configure preferences

# Dock

defaults write com.apple.dock tilesize -int 44
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-recents -bool false

DockItems=(
  "/Applications/Microsoft Edge Dev.app"
  "/Applications/Notion.app"
  "/Applications/Visual Studio Code - Insiders.app"
  "/Applications/Microsoft Teams.app"
  "/Applications/VMware Horizon Client.app"
  "/System/Applications/Utilities/Terminal.app"
)

defaults write com.apple.dock persistent-apps -array

for i in "${DockItems[@]}"; do
    defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$i</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done

# Finder

defaults write com.apple.finder CreateDesktop -bool false
defaults write com.apple.finder QuitMenuItem -bool true

# Keyboard

defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10
defaults write -g com.apple.mouse.tapBehavior -int 1

# Menu bar

defaults write com.apple.menuextra.battery ShowPercent YES
defaults write com.apple.menuextra.clock DateFormat -string "HH:mm"

# Screen capture

defaults write com.apple.screencapture location ~/Documents

# Sound

defaults write com.apple.sound.beep.volume -float 0.5 
defaults write com.apple.sound.uiaudio.enabled -bool false

# Trackpad

defaults write -g ContextMenuGesture -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2