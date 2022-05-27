#!/bin/bash
# Reference sites
# https://carla.readthedocs.io/en/latest/start_quickstart/


echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Install CARLA - Simulator \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

pip3 -V
pip3 install --upgrade pip
pip install --user pygame numpy &&
pip3 install --user pygame numpy

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1AF1527DE64CB8D9
sudo add-apt-repository "deb [arch=amd64] http://dist.carla.org/carla $(lsb_release -sc) main"

# Update the Debian package index
sudo apt-get update 
sudo apt-get install libomp5
# Install the latest CARLA version, or update the current installation
sudo apt-get install carla-simulator 
