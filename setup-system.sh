#!/bin/zsh

# Disable iTunes backups
defaults write com.apple.iTunes DeviceBackupsDisabled -bool true

# Enable developer mode
sudo /usr/sbin/DevToolsSecurity --enable

# Create dir structure
cd ~
mkdir 3d-printing Projects NAS Random tmp
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

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
  node \
  xcodes \
  libreoffice \
  openscad \
  freecad \
  xcodes \
  sonixd \
  mediainfo \
  prusaslicer \
  musicbrainz-picard \
  sequel-ace \
  ranger \
  android-studio \
  gimp \
  nextcloud \
  syncthing \
  obsidian \
  notunes \
  commander-one \
  shntool

brew install --cask xcodes
brew services start syncthing

xcodes install --latest

# Install apps from App Store
#
# App IDs correspond to the following apps:
# 1575557335 - Kaleidoscope 3
# 1450874784 - Transporter
# 640199958 - Apple Developer
# 899247664 - TestFlight
# 1451685025 - WireGuard
# 441258766 - Magnet
mas install \
  1575557335 \
  1450874784 \
  640199958 \
  899247664 \
  1451685025 \
  441258766
  
# Cheat.sh
curl https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh
sudo chmod +x /usr/local/bin/cht.sh

# NSF shares
sudo echo "10.23.0.40:/mnt/user/books /Users/pmol/NAS/Books nfs defaults,timeo=900,retrans=5,_netdev 0 0" | sudo tee -a /etc/fstab
sudo echo "10.23.0.40:/mnt/user/general /Users/pmol/NAS/General nfs defaults,timeo=900,retrans=5,_netdev 0 0" | sudo tee -a /etc/fstab
sudo echo "10.23.0.40:/mnt/user/movies /Users/pmol/NAS/Movies nfs defaults,timeo=900,retrans=5,_netdev 0 0" | sudo tee -a /etc/fstab
sudo echo "10.23.0.40:/mnt/user/music /Users/pmol/NAS/Music nfs defaults,timeo=900,retrans=5,_netdev 0 0" | sudo tee -a /etc/fstab
sudo echo "10.23.0.40:/mnt/user/tv /Users/pmol/NAS/TV nfs defaults,timeo=900,retrans=5,_netdev 0 0" | sudo tee -a /etc/fstab
sudo echo "10.23.0.40:/mnt/disks/download /Users/pmol/NAS/Download nfs defaults,timeo=900,retrans=5,_netdev 0 0" | sudo tee -a /etc/fstab
