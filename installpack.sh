#!/bin/bash

# source ./packages.sh
# source ./functions.sh
#
# _installPackagesPacman "${packagesPacman[@]}";
# _installPackagesYay "${packagesYay[@]}";

source ./all-packages.sh
paru --noconfirm -S rofi-lbonn-wayland-git
source ./paru-function.sh

_installPackagesParu "${packagesParu[@]}"
