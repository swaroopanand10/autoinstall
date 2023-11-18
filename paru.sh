# ------------------------------------------------------
# Check if paru is installed
# ------------------------------------------------------

if sudo pacman -Qs paru > /dev/null ; then
    echo "paru is already installed!"
else
    echo "paru is not installed. Will be installed now!"
    _installPackagesPacman "base-devel"
    SCRIPT=$(realpath "$0")
    temp_path=$(dirname "$SCRIPT")
    echo $temp_path
    git clone https://aur.archlinux.org/yay.git ~/paru
    cd ~/paru
    makepkg -si
    cd $temp_path
    echo "paru has been installed successfully."
fi
echo ""
