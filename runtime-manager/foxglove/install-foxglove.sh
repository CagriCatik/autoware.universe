#!/bin/bash

RED="\e[31m"
GREEN="\e[33m"
ENDCOLOR="\e[0m"

echo -e "${RED} >> Begin of script${ENDCOLOR}"

echo -e "${GREEN} >> Change the directory and download foxglove ${ENDCOLOR}"
cd ~/Downloads
wget https://github.com/foxglove/studio/releases/download/v1.17.0/foxglove-studio-1.17.0-linux-amd64.deb

echo -e "${GREEN} >> Install foxglove ${ENDCOLOR}"
sudo dpkg -i foxglove-studio-1.17.0-linux-amd64.deb
sudo apt update && sudo apt install foxglove-studio

echo -e "${GREEN} >> Install ros-bridge-suite ${ENDCOLOR}"
sudo apt install ros-galactic-rosbridge-suite

echo -e "${GREEN} >> Run foxglove ${ENDCOLOR}"
foxglove-studio

echo -e "${RED} >> End of script${ENDCOLOR}"