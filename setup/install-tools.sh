#!/bin/bash
sudo apt update

# Useful tools on Ubuntu

sudo apt -y install git
sudo apt -y install curl
sudo apt -y install ssh
sudo apt -y install telegram-desktop
sudo apt -y install thunderbird
sudo apt -y install gazebo9
sudo apt -y install libgazebo9-dev
sudo apt -y install terminator
sudo apt -y install tree 

sudo snap install vlc
sudo snap install discord
sudo snap install spotify
sudo snap install whatsapp-for-linux

# Remove speech-dispatcher against crackling and delayed sound
sudo apt-get remove speech-dispatcher

# Microsoft Teams install
wget –O teams.deb https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb
sudo apt install ./teams_1.3.00.5153_amd64.deb

# Google chrome install
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Sticky Notes
sudo add-apt-repository ppa:umang/indicator-stickynotes
sudo apt-get update
sudo apt-get install indicator-stickynotes
