#!/usr/bin/env sh

# Install package manager

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew analytics off

brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# Install applications

brew install \
  bat \
  bitwarden \
  db-browser-for-sqlite \
  dotnet-sdk \
  elixir \
  exa \
  fd \
  firefox \
  firefox-developer-edition \
  fish \
  font-jetbrains-mono \
  git \
  go \
  google-chrome-dev \
  httpie \
  insomnia \
  julia \
  karabiner-elements \
  kotlin \
  logitech-options \
  microsoft-edge-dev \
  mas \
  microsoft-office \
  microsoft-teams \
  obs \
  r \
  rectangle \
  ripgrep \
  rustup \
  safari-technology-preview \
  sk \
  steam \
  tldr \
  vb-cable \
  visual-studio-code-insiders \
  vlc \
  vmware-horizon-client \
  xsv \
  youtube-dl \
  zoom

mas install \
  1274495053 # Microsoft To Do
  1295203466 # Microsoft Remote Desktop

# Configure shell

echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

# Configure preferences

# Dock

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock tilesize -int 44

DockItems=(
  "/Applications/Microsoft Edge Dev.app"
  "/Applications/Visual Studio Code - Insiders.app"
  "~/Applications/Edge Dev App.localized/Microsoft Outlook.app"
  "/Applications/Microsoft Teams.app"
  "/Applications/Microsoft To Do.app"
  "/Applications/Microsoft Remote Desktop.app"
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

defaults write -g com.apple.mouse.tapBehavior -int 1
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

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
defaults write com.apple.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.AppleBluetoothMultitouch.trackpad FirstClickThreshold -bool false
defaults write com.apple.AppleBluetoothMultitouch.trackpad SecondClickThreshold -bool false
defaults write com.apple.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture -bool false
defaults write com.apple.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -bool false
defaults write com.apple.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture -bool false
defaults write com.apple.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool false
defaults write com.apple.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -bool false
defaults write com.apple.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -bool false
defaults write com.apple.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -bool false
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -bool false
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -bool false
defaults write com.apple.trackpad.forceClick -bool false
