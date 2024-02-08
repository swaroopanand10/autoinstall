#!/bin/bash

### This file only contains essential parts

git clone git@github.com:swaroopanand10/lvim.git $HOME/.config/nvim
git clone git@github.com:swaroopanand10/dotstow.git $HOME/dotstow
git clone git@github.com:swaroopanand10/autoinstall.git $HOME/.config/autoinstall
# git clone git@gitlab.com:swaroopanand10/music.git $HOME/music
# git clone --recurse-submodules git@gitlab.com:swaroopanand10/wallpapers.git $HOME/Pictures/wallpapers

## doing it like this so that stow does not happen if the directory of dotstow does not get clone properly for some reason
cd $HOME/dotstow/ && stow */ -t ~ --adopt
cd $HOME/dotstow/ && git restore *
