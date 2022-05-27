#!/bin/bash

mkdir -p ~/adehome
cd ~/adehome
touch .adehome

cd ~/adehome

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Remove existing  gitlab repo	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

file="AutowareAuto"
if [ -e "$file" ];then rm -rf "$file" ; fi
  
git clone https://gitlab.com/autowarefoundation/autoware.auto/AutowareAuto.git

cd AutowareAuto

export ADE_DOCKER_RUN_ARGS="--cap-add=SYS_PTRACE --net=host --privileged --add-host ade:127.0.0.1 -e RMW_IMPLEMENTATION=rmw_cyclonedds_cpp" 

export ADE_GITLAB=gitlab.com 

export ADE_REGISTRY=registry.gitlab.com 

export ADE_IMAGES="registry.gitlab.com/autowarefoundation/autoware.auto/autowareauto/ade:master   registry.gitlab.com/autowarefoundation/autoware.auto/autowareauto:master   registry.gitlab.com/apexai/ade-lgsvl:2020.08-native-bridge"

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Update and start the ade	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'
ade start --update

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Test - Enter into ade   	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'
ade enter

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Test - Exit ade   	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'
echo $ exit ade
