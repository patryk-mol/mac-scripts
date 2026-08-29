#!/bin/zsh

brew update && brew upgrade --yes
brew services restart syncthing
