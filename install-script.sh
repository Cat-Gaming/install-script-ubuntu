#!/bin/bash

# INSTALL SCRIPT FOR UBUNTU

# BASIC SOFTWARE

cd ~
sudo apt-get update -qq
sudo apt-get install -yy htop vim wget

# Set Background
wget -O image.png https://wallpapercave.com/wp/wp4880175.jpg
mv image.png Pictures/image.png
gsettings set org.gnome.desktop.background picture-uri file:///home/tyler/Pictures/image.png

# Install my software
sudo apt-get install default-jre default-jre-headless openjdk-11-jre openjdk-11-jre-headless # Dependencies for Minecraft
wget https://launcher.mojang.com/download/Minecraft.deb
sudo dpkg -i Minecraft.deb
rm Minecraft.deb

sudo apt-get install -yy openjdk-8-jre binutils gcc g++ blender flatpak nasm ffmpeg

# Install OBS Studio
sudo add-apt-repository ppa:obsproject/obs-studio -yy
sudo apt-get update -qq
sudo apt-get install obs-studio

# Make Code Directory
mkdir code
mkdir code/c

# Install vscode
wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i vscode.deb

# Install appimagelauncher
sudo add-apt-repository ppa:appimagelauncher-team/stable -yy
sudo apt-get update -qq
sudo apt install appimagelauncher

# Install Godot
flatpak install flathub org.godotengine.Godot

# Install other Libre Stuff
flatpak install flathub org.kde.kdenlive
flatpak install flathub org.geany.Geany

# Install Wine and Lutris
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository ppa:lutris-team/lutris -yy
sudo apt-get update
sudo apt-get install lutris
sudo dpkg --add-architecture i386 
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ groovy main' 
sudo apt-get update
sudo apt-get install --install-recommends winehq-stable

# Swappiness
# Uses 90 % of memory before using swap space
sudo echo "vm.swappiness = 10" >> /etc/sysctl.conf

# Firefox Sync
firefox "https://accounts.firefox.com/?service=sync" && echo Success Firefox Sync Complete!

# Done.

echo "Done! Reboot the Computer."
