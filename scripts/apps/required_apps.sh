#!/bin/bash

sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo apt update -y
sudo snap install btop
sudo apt install -y dconf-editor gnome-tweaks chrome-gnome-shell gnome-shell-extensions fish gnome-pie grub-customizer kitty pulseaudio curl git neofetch

# Change the default shell to fish
sudo chsh $USER -s /usr/bin/fish

sudo apt remove gnome-screenshot && sudo apt install -y flameshot