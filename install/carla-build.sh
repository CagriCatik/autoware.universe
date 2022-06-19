#!/bin/bash


echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m         CARLA - Linux build	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

# Software requirements

echo $'\e[32m-----------------------------------------\e[0m'
echo $'\e[31m Software requirements 	               \e[0m'
echo $'\e[32m----------------------------------------\e[0m'

sudo apt-get update &&
sudo apt-get install wget software-properties-common &&
sudo add-apt-repository ppa:ubuntu-toolchain-r/test &&
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add - &&
sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-8 main" &&
sudo apt-get update


echo $'\e[32m----------------------------------------\e[0m'
echo $'\e[31m Software requirements 	              \e[0m'
echo $'\e[32m----------------------------------------\e[0m'

sudo apt-get -y install build-essential clang-8 lld-8 g++-7 cmake ninja-build libvulkan1 python3-dev python3-pip libpng-dev libtiff5-dev libjpeg-dev tzdata sed curl unzip autoconf libtool rsync libxml2-dev git


echo $'\e[32m----------------------------------------\e[0m'
echo $'\e[31m Change the compiler 	              \e[0m'
echo $'\e[32m----------------------------------------\e[0m'
sudo apt-get install aptitude
sudo apt aptitude install clang-8
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/lib/llvm-8/bin/clang++ 180 &&
sudo update-alternatives --install /usr/bin/clang clang /usr/lib/llvm-8/bin/clang 180

echo $'\e[32m----------------------------------------\e[0m'
echo $'\e[31m Python dependencies 	              \e[0m'
echo $'\e[32m----------------------------------------\e[0m'

sudo apt install python3-pip
pip3 install --user -Iv setuptools==47.3.1 &&
pip3 install --user distro &&
pip3 install --user wheel auditwheel


cd ~/

git clone --depth 1 -b carla https://github.com/CarlaUnreal/UnrealEngine.git ~/UnrealEngine_4.26

cd ~/UnrealEngine_4.26 && ./Setup.sh && ./GenerateProjectFiles.sh && make
cd ~/UnrealEngine_4.26/Engine/Binaries/Linux && ./UE4Editor

