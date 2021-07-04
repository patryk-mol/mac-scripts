#!/bin/zsh

# Inspect what's deleted before running. Run with sudo.
# Note: Go through Application Support directory manually since many of your apps might occupy a lot of space they don't have to

# General stuff
rm -rf /Incompatible\ Software
rm -rf /Library/Logs/*
rm -rf /Library/Audio/Apple\ Loops/*					#GarageBand trash
rm -rf /Library/Application\ Support/GarageBand			#GarageBand trash
rm -rf /Library/Application\ Support/Logic				#GarageBand trash
rm -rf ~/Library/Caches/*
rm -rf ~/Library/Logs/*
rm -rf ~/Library/Library/Receipts/*
rm -rf ~/Library/Receipts/*
rm -rf ~/Library/Application\ Support/MobileSync/Backup/*
rm -rf ~/Music/iTunes/iTunes\ Media/Mobile\ Applications/*
rm -rf ~/.Trash/*
rm -rf ~/.Trash/.*
rm -rf ~/Library/Containers/com.apple.mail/Data/Library/Mail\ Downloads/*
rm -rf ~/Library/Audio/Apple\ Loops/*					#GarageBand trash
rm -rf ~/Library/Application\ Support/GarageBand		#GarageBand trash
rm -rf ~/Library/Application\ Support/Logic				#GarageBand trash

# JavaScript
npm cache clean --force
rm -rf ~/.cache/*
rm -rf ~/.cordova/lib/npm_cache/*
rm -rf ~/.node-gyp/*
rm -rf ~/.plugman/cache/*
rm -rf ~/.plugman/plugman.log
rm -rf ~/.tabris-cli/platforms/*

# Xcode
rm -rf /Library/Developer/CoreSimulator/Profiles/Runtimes/*
rm -rf ~/.itmstransporter
rm -rf ~/Library/Developer/CoreSimulator/Devices/*
rm -rf ~/Library/Developer/Shared/Documentation/DocSets/*
rm -rf ~/Library/Developer/Xcode/Archives/*
rm -rf ~/Library/Developer/Xcode/DerivedData/*
rm -rf ~/Library/Developer/Xcode/DocumentationCache/*
rm -rf ~/Library/Developer/Xcode/iOS\ Device\ Logs/*
rm -rf ~/Library/Developer/Xcode/iOS\ DeviceSupport/*
rm -rf ~/Library/Developer/Xcode/Products/*
xcrun simctl delete unavailable