#!/bin/bash

echo $'\e[32m-------------------------------------------------------\e[0m'
echo $'\e[31m Update the package lists for upgrade	             	\e[0m'
echo $'\e[32m-------------------------------------------------------\e[0m'

sudo apt-get -y update
sudo apt-get -y install git
sudo apt-get install -y python3-vcstools


echo $'\e[32m---------------------------------------------------------\e[0m'
echo $'\e[31m Clone the repo from autowarefoundation/autoware 	 	  \e[0m'
echo $'\e[32m---------------------------------------------------------\e[0m'

cd ~/ && if [ -d "./autoware" ]; then rm -rf ./autoware; fi
git clone https://github.com/autowarefoundation/autoware.git 
cd ~/autoware && sudo chmod +x ./setup-dev-env.sh 

echo $'\e[32m---------------------------------------------------------\e[0m'
echo $'\e[31m Setup the workspace                            	 	  \e[0m'
echo $'\e[32m---------------------------------------------------------\e[0m'

cd ~/autoware && mkdir src 
vcs import src < autoware.repos


echo $'\e[32m---------------------------------------------------------\e[0m'
echo $'\e[31m Install dependent ROS packages and build the workspace  \e[0m'
echo $'\e[32m---------------------------------------------------------\e[0m'


source /opt/ros/galactic/setup.bash
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release


echo $'\e[32m---------------------------------------------------------\e[0m'
echo $'\e[31m Done!                                                   \e[0m'
echo $'\e[32m---------------------------------------------------------\e[0m'

