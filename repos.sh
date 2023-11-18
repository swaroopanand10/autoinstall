#!/bin/bash

git clone git@github.com:swaroopanand10/lvim.git $HOME/.config/nvim
git clone git@github.com:swaroopanand10/dotstow.git $HOME/dotstow
git clone git@gitlab.com:swaroopanand10/music.git $HOME/music

cd $HOME/dotstow/
stow * -t ~ --adopt
cd $HOME/dotstow/ && git restore *
