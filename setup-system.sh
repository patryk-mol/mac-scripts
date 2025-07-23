#!/bin/zsh

# Enable developer mode
sudo /usr/sbin/DevToolsSecurity --enable

# Disable turning on when opening a lid or connecting power cable
sudo nvram BootPreference=%00

# Disable iTunes backups
defaults write com.apple.iTunes DeviceBackupsDisabled -bool true

# Prevent macOS writing .DS_Store files on network shares
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Make list view the default in Finder
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Set default list view settings for new folders
defaults write com.apple.finder FK_StandardViewSettings -dict-add ListViewSettings '{ "columns" = ( { "ascending" = 1; "identifier" = "name"; "visible" = 1; "width" = 300; }, { "ascending" = 0; "identifier" = "dateModified"; "visible" = 1; "width" = 181; }, { "ascending" = 0; "identifier" = "size"; "visible" = 1; "width" = 97; } ); "iconSize" = 16; "showIconPreview" = 0; "sortColumn" = "name"; "textSize" = 12; "useRelativeDates" = 1; }'
    
# Clear existing folder view settings to force use of default settings
defaults delete com.apple.finder FXInfoPanesExpanded 2>/dev/null || true
defaults delete com.apple.finder FXDesktopVolumePositions 2>/dev/null || true

# Set list view for all view types
defaults write com.apple.finder FK_StandardViewSettings -dict-add ExtendedListViewSettings '{ "columns" = ( { "ascending" = 1; "identifier" = "name"; "visible" = 1; "width" = 300; }, { "ascending" = 0; "identifier" = "dateModified"; "visible" = 1; "width" = 181; }, { "ascending" = 0; "identifier" = "size"; "visible" = 1; "width" = 97; } ); "iconSize" = 16; "showIconPreview" = 0; "sortColumn" = "name"; "textSize" = 12; "useRelativeDates" = 1; }'
    
# Sets default search scope to the current folder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Remove .DS_Store files to reset folder view settings
find ~ -name ".DS_Store" -type f -delete 2>/dev/null || true

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Set the sidebar icon size to small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Show status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Restart Finder to apply changes
killall Finder

# Fix Missions control to never rearrange spaces
defaults write com.apple.dock mru-spaces -bool false

# Disable Apple Intelligence
defaults write com.apple.CloudSubscriptionFeatures.optIn "545129924" -bool "false"

# Create dir structure
cd ~
mkdir 3d-printing Projects NAS Random tmp

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install \
  bandwhich \
  bat \
  bottom \
  cmatrix \
  eza \
  fd \
  flac \
  fzf \
  git-delta \
  glow \
  hugo \
  mailsy \
  mas \
  media-info \
  midnight-commander \
  nano \
  neovim \
  procs \
  ranger \
  ripgrep \
  shntool \
  starship \
  syncthing \
  tealdeer \
  xcodes \
  zsh-autosuggestions \
  zsh-syntax-highlighting

brew install --cask \
  amethyst \
  android-studio \
  balenaetcher \
  bitwarden \
  brave-browser \
  commander-one \
  firefox \
  fluent-reader \
  fork \
  freac \
  freecad \
  gimp \
  google-chrome \
  gzdoom \
  iterm2 \
  keka \
  libreoffice \
  mediainfo \
  mkvtoolnix-app \
  musicbrainz-picard \
  nextcloud \
  notunes \
  obs \
  obsidian \
  onlyoffice \
  onyx \
  openscad \
  pinta \
  prusaslicer \
  sequel-ace \
  signal \
  sonixd \
  spotify \
  stats \
  steam \
  stolendata-mpv \
  sublime-text \
  utm \
  vlc \
  vscodium \
  xcodes-app \
  zed \
  zotero

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
