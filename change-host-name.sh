#!/bin/zsh

sudo scutil --set ComputerName $1
sudo scutil --set LocalHostName $1
sudo scutil --set HostName $1
