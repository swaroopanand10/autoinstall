# do these steps before running archinstall
```
  sudo pacman -Sy # for updating mirrors


## Optional
  sudo pacman -S reflector 
  sudo reflector --country 'India' --latest 5 --age 2 --fastest 5 --protocol https --sort rate --save /etc/pacman.d/mirrorlist # maybe not needed

## install archinstall
sudo pacman -S archinstall
```
