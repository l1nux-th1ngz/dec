#!/bin/bash

# Update and Install Required Packages
sudo apt-get update

# List of packages to install
packages=(
    xorg
    xserver-xorg
    xbacklight
    xbindkeys
    xvkbd
    xinput
    build-essential
    gcc
    net-tools
    python3-full
    npm
    nodejs
    gettext
    ssft
    nm-connection-editor
    nm-applet
    ripgrep
    libxinerama-dev
    libxinerama
    readline-common
    install-info
    fontconfig
    g++
    bs
    auditd
    fail2ban
    iptables
    passwd
    python3
    python3-pip
    firmware-iwlwifi
    zlib1g-dev
    libncurses5-dev
    libgdbm-dev
    libnss3-dev
    libssl-dev
    libreadline-dev
    libffi-dev
    software-properties-common
)

# Install the packages
for package in "${packages[@]}"; do
    sudo apt-get install -y "$package"
done

# Refresh package list
sudo apt-get update

echo "Package installation complete and Xorg set up."
