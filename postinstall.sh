#!/bin/bash

## Adding user to some essential groups
sudo gpasswd -a swaroop lp
sudo gpasswd -a swaroop input

## Reloading udevadm rules for batify
# sudo udevadm control --reload-rules (uninstalled for now)

## Changing shell to zsh
chsh -s /bin/zsh

## Creating some imp dirs
[ -d ~/Pictures ] || mkdir ~/Pictures # create pictures dir only if not exist
cd ~/Pictures && mkdir videos screenshots

## Nemo default terminal
gsettings set org.cinnamon.desktop.default-applications.terminal exec kitty

## Virtualization
# sudo systemctl enable --now libvirtd
# sudo groupadd libvirtd
# sudo gpasswd -a swaroop libvirtd
