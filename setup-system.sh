#!/bin/zsh

#Disable iTunes backups
defaults write com.apple.iTunes DeviceBackupsDisabled -bool true

#Enable developer mode
sudo /usr/sbin/DevToolsSecurity --enable
