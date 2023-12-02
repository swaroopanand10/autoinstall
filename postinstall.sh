#!/bin/bash

## adding user to some essential groups
sudo gpasswd -a swaroop lp
sudo gpasswd -a swaroop input

## Reloading udevadm rules for batify
# sudo udevadm control --reload-rules (uninstalled for now)
