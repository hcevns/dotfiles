pacman -Syyu

pacman -S \
  bat \
  dotnet-sdk \
  elixir \
  exa \
  fd \
  firefox \
  firefox-developer-edition \
  fish \
  git \
  go \
  httpie \
  julia \
  kotlin \
  obs-studio \
  pandoc \
  r \
  ripgrep \
  rustup \
  skim \
  sqlitebrowser \
  steam \
  tldr \
  ttf-jetbrains-mono \
  vlc \
  xsv \
  youtube-dl

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S \
  bitwarden \
  google-chrome-dev \
  insomnia \
  teams \
  visual-studio-code-insiders \
  vmware-horizon-client \
  zoom