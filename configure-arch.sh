pacman -Syyu

pacman -S \
  bat \
  bitwarden \
  dotnet-sdk \
  elixir \
  eza \
  fd \
  firefox \
  fish \
  git \
  go \
  httpie \
  julia \
  kotlin \
  nodejs \
  obs-studio \
  pandoc \
  pnpm \
  r \
  racket-minimal \
  ripgrep \
  rustup \
  skim \
  sqlitebrowser \
  tldr \
  ttf-jetbrains-mono \
  vlc \
  xsv

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S \
  duckdb-bin \
  microsoft-edge-stable-bin \
  notion-app \
  visual-studio-code-bin \
  youtube-dlp