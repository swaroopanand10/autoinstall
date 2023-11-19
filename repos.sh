#!/bin/bash

git clone git@github.com:swaroopanand10/lvim.git $HOME/.config/nvim
git clone git@github.com:swaroopanand10/dotstow.git $HOME/dotstow
git clone git@gitlab.com:swaroopanand10/music.git $HOME/music
git clone git@gitlab.com:swaroopanand10/autoinstall.git $HOME/.config/autoinstall

cd $HOME/dotstow/
stow * -t ~ --adopt
cd $HOME/dotstow/ && git restore *


# creating directory for random repos
mkdir $HOME/repos

# gdb related repos
git clone https://github.com/jerdna-regeiz/splitmind.git $HOME/repos/splitmind/
git clone https://github.com/pwndbg/pwndbg.git $HOME/repos/pwndbg

# creating directory structure for code repos
mkdir -p $HOME/code/projects
mkdir -p $HOME/code/projects/other
mkdir -p $HOME/code/os

# personal projects
git clone git@github.com:swaroopanand10/prg.git $HOME/code/prg
git clone git@github.com:swaroopanand10/asm.git $HOME/code/projects/asm
git clone git@github.com:swaroopanand10/gtk4tut.git $HOME/code/projects/gtk4tut
git clone git@github.com:swaroopanand10/hfc_restart.git $HOME/code/projects/hfc_restart

# projext other repos
git clone https://github.com/wesbos/JavaScript30.git $HOME/code/projects/other/javascript30
git clone https://github.com/TheOdinProject/javascript-exercises.git $HOME/code/projects/other/javascript-exercises
git clone https://github.com/TheOdinProject/css-exercises.git $HOME/code/projects/other/css-exercises

# os repos
git clone https://gitlab.com/inkscape/inkscape.git$HOME/code/os/inkscape
