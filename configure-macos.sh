#!/usr/bin/env sh

# Install package manager

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew analytics off

brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# Install applications

brew install \
  bat \
  bitwarden \
  dotnet-sdk \
  duckdb \
  elixir \
  exa \
  fd \
  firefox \
  fish \
  font-jetbrains-mono \
  git \
  go \
  httpie \
  julia \
  karabiner-elements \
  kotlin \
  logitech-options \
  microsoft-edge \
  minimal-racket \
  mas \
  notion \
  obs \
  pandoc \
  r \
  rectangle \
  ripgrep \
  rustup \
  sk \
  tealdeer \
  visual-studio-code \
  vlc \
  xsv \
  yt-dlp

mas install \
  497799835 # XCode

xcodebuild -license accept

# Configure shell

echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
fish -c 'fish_add_path ~/.cargo/bin'
fish -c 'nvm install latest'
fish -c 'set --universal nvm_default_version latest'

# Configure preferences

# Dock

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock tilesize -int 44

DockItems=(
  "/Applications/Microsoft Edge.app"
  "/Applications/Notion.app"
  "/Applications/Visual Studio Code.app"
  "/System/Applications/Utilities/Terminal.app"
)

defaults write com.apple.dock persistent-apps -array

for i in "${DockItems[@]}"; do
    defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$i</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done

# Finder

defaults write com.apple.finder CreateDesktop -bool false
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf" # Search current folder by default
defaults write com.apple.finder QuitMenuItem -bool true

# Keyboard

defaults write -g com.apple.mouse.tapBehavior -int 1
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# Menu bar

defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist BatteryShowPercentage -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible NowPlaying" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool false
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM HH:mm"
defaults write com.apple.spotlight "NSStatusItem Visible Item-0" -bool false

# Screen capture

defaults write com.apple.screencapture location ~/Documents

# Sound

defaults write -g com.apple.sound.uiaudio.enabled -int 0
defaults write com.apple.sound.beep.volume -float 0.5 

# Trackpad

defaults write -g AppleEnableSwipeNavigateWithScrolls -int 0
defaults write -g com.apple.trackpad.forceClick -int 0
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
