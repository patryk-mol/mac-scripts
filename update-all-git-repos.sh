#!/bin/zsh

find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;
#Use command below for testing instead of the one above
#find . -type d -depth 1 -exec echo git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;
