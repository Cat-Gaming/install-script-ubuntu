#!/bin/bash

# INSTALL SCRIPT FOR UBUNTU

# BASIC SOFTWARE

cd ~
sudo apt-get update -qq
sudo apt-get install -yy htop vim wget

# Install my software
wget https://launcher.mojang.com/download/Minecraft.deb
dpkg -i Minecraft.deb
rm Minecraft.deb

sudo apt-get install -yy openjdk-8-jre binutils gcc g++ blender flatpak nasm ffmpeg

# Install OBS Studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update -qq
sudo apt-get install obs-studio

# Make Code Directory
mkdir code
mkdir code/c

# Install vscode
. <( wget -O - https://code.headmelted.com/installers/apt.sh )

# Install appimagelauncher
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt-get update -qq
sudo apt install appimagelauncher

# Install Godot
flatpak install flathub org.godotengine.Godot

# Install other Libre Stuff
flatpak install flathub org.kde.kdenlive
flatpak install flathub org.geany.Geany

# Swappiness
# Uses 90 % of memory before using swap space
sudo echo "vm.swappiness = 10" >> /etc/sysctl.conf

# Done.

echo "Done! Reboot the Computer."
