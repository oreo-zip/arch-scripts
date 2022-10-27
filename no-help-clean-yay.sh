#!/bin/bash

echo This script will FAIL if you run this as root!!!

echo Setting module "pcspkr" to be disabled
sudo touch /etc/modprobe.d/blacklist.conf
sudo echo 'blacklist pcspkr' > /etc/modprobe.d/blacklist.conf
echo Starting yay-git installation
sudo pacman -S --needed git base-devel
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si
echo yay-git was installed. No error reported.
echo use yay --help for more info.
