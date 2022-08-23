#!/bin/zsh

# Disable iTunes backups
defaults write com.apple.iTunes DeviceBackupsDisabled -bool true

# Enable developer mode
sudo /usr/sbin/DevToolsSecurity --enable

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> .zprofile
zsh

brew install \
  bitwarden \
  iterm2 \
  sublime-text \
  brave-browser \
  firefox \
  vscodium \
  fork \
  balenaetcher \
  spotify \
  vlc \
  mpv \
  steam \
  skype \
  onlyoffice \
  midnight-commander \
  exa \
  bat \
  ripgrep \
  git-delta \
  bottom \
  procs \
  bandwhich \
  tealdeer \
  neovim \
  starship \
  zsh-autosuggestions \
  zsh-syntax-highlighting \
  gzdoom \
  amethyst \
  fzf \
  fd \
  mas \
  node

brew install robotsandpencils/made/xcodes
brew link xcodes
brew install --cask xcodes sonixd
xcodes install --latest

# Install apps from App Store
#
# App IDs correspond to the following apps:
# 1575557335 - Kaleidoscope 3
# 1450874784 - Transporter
# 640199958 - Apple Developer
# 899247664 - TestFlight

mas install 1575557335 \
  1450874784 \
  640199958 \
  899247664
  
# Cheat.sh
curl https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh
sudo chmod +x /usr/local/bin/cht.sh
