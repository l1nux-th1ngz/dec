#!/bin/bash

# Update and Install Required Packages
sudo apt-get update

# List of packages to install
packages=(
    bspwm
    polybar
    sxhkd
    dunst
    geany
    geany-plugins
    network-manager
    gnome-network-manager
    synaptic
    kitty
    alacritty
    nemo
    ranger
    nnn
    suckless-tools    
    vlc
    yad
    geany
    geany-plugins
    ranger
    polybar
    nnn
    xdg-user-dirs
    xdg-user-dirs-gtk
    parcellite
    picom
    qt5ct
    rofi
    zsh
)

# Install packages
for package in "${packages[@]}"; do
    sudo apt-get -y install "$package"
done

# Update xdg-user-dirs
xdg-user-dirs-update
xdg-user-dirs-gtk-update

# Refresh
sudo apt-get update

echo "Setup completed. All specified packages installed."
