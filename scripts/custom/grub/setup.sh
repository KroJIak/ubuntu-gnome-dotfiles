#!/bin/bash

sudo rm /etc/default/grub
sudo cp grub /etc/default/
sudo update-grub

# make sure you have the packages for plymouth
sudo apt install -y plymouth

# after downloading or cloning themes, copy the selected theme in plymouth theme dir
sudo rm -r /usr/share/plymouth/themes/hexagon-dots-alt
sudo cp -r ../../../grub-theme /usr/share/plymouth/themes/hexagon_dots_alt
# install the new theme (angular, in this case)
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/hexagon_dots_alt/hexagon_dots_alt.plymouth 100

# select the theme to apply
sudo update-alternatives --config default.plymouth
# update initramfs 
sudo update-initramfs -u