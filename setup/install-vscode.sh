#!/bin/bash
# Reference sites

sudo apt update
#Once updated, proceed and install dependencies required by executing.
sudo apt install software-properties-common apt-transport-https

#download the repository and import Microsoft’s GPG key 
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# update the system and install Visual Studio Code
sudo apt update
sudo apt install code
