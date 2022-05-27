#!/bin/bash
sudo apt-get update

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Install Docker with nvidia-gpu	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m remove docker from snap		      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'
sudo snap remove docker


echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m remove docker - old versions	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl https://get.docker.com | sh \
  && sudo systemctl --now enable docker

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Setting up NVIDIA Container Toolkit   \e[0m'  
echo $'\e[32m---------------------------------------\e[0m'

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
      && curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
      && curl -s -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list | \
            sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
            sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list  
echo y | command       

echo $'\e[32m-----------------------------------------\e[0m'
echo $'\e[31m Setting up NVIDIA Experimental features \e[0m'
echo $'\e[32m-----------------------------------------\e[0m'  

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
      && curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
      && curl -s -L https://nvidia.github.io/libnvidia-container/experimental/$distribution/libnvidia-container.list | \
         sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
         sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
echo y | command

echo $'\e[32m-----------------------------------------\e[0m'
echo $'\e[31m Install the nvidia-docker2 package      \e[0m'
echo $'\e[32m-----------------------------------------\e[0m'  

sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker

echo $'\e[32m-----------------------------------------\e[0m'
echo $'\e[31m Test the CUDA container                 \e[0m'
echo $'\e[32m-----------------------------------------\e[0m'  
sudo docker run --rm --gpus all nvidia/cuda:11.0.3-base-ubuntu20.04 nvidia-smi

echo $'\e[32m-----------------------------------------\e[0m'
echo $'\e[31m Docker Hello-World                      \e[0m'
echo $'\e[32m-----------------------------------------\e[0m'
sudo docker run hello-world

 
