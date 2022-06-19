#!/bin/bash

echo $'\e[32m----------------------------------------------------------------------\e[0m'
echo $'\e[31m Navigate to the Autoware workspace and import simulator dependencies \e[0m'
echo $'\e[32m----------------------------------------------------------------------\e[0m'

cd ~/autoware && vcs import src < simulator.repos

echo $'\e[32m----------------------------------------------------------------------\e[0m'
echo $'\e[31m Install dependent ROS packages and build the workspace               \e[0m'
echo $'\e[32m----------------------------------------------------------------------\e[0m'

source /opt/ros/galactic/setup.bash
rosdep install --from-paths src --ignore-src --rosdistro $ROS_DISTRO
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release

echo $'\e[32m---------------------------------------------------------\e[0m'
echo $'\e[31m Unzip the sample-map-planning	                     	  \e[0m'
echo $'\e[32m---------------------------------------------------------\e[0m'


cd ~/ && if [ -d "./autoware.universe/simulation" ]; then rm -rf ./autoware.universe/simulation; fi
cd ~/ && if [ -d "./autoware.universe/rosbag" ]; then rm -rf ./autoware.universe/rosbag; fi
mkdir ~/autoware.universe/simulation
mkdir ~/autoware.universe/rosbag

cd ~/autoware.universe/assets 
unzip sample-map-planning.zip -d ~/autoware.universe/simulation
unzip sample-map-rosbag.zip -d ~/autoware.universe/rosbag
