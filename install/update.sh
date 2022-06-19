#!/bin/bash

echo $'\e[32m-------------------------------------------------------\e[0m'
echo $'\e[31m Update the .repos file 	  		              \e[0m'
echo $'\e[32m-------------------------------------------------------\e[0m'


cd ~/autoware
git pull

vcs import src < autoware.repos
vcs pull src

echo $'\e[32m-------------------------------------------------------\e[0m'
echo $'\e[31m Install dependent ROS packages	   		      \e[0m'
echo $'\e[32m-------------------------------------------------------\e[0m'


source /opt/ros/galactic/setup.bash
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

echo $'\e[32m-------------------------------------------------------\e[0m'
echo $'\e[31m Build the workspace	   		              \e[0m'
echo $'\e[32m-------------------------------------------------------\e[0m'

colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
