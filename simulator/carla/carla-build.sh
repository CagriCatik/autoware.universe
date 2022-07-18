RED="\e[31m"
GREEN="\e[33m"
ENDCOLOR="\e[0m"

echo -e "${RED} >> Build CARLA on Ubuntu 20.04.2 LTS${ENDCOLOR}"

sudo apt-get install aria2

echo -e "${RED} >> Cloning the CARLA Repository ${ENDCOLOR}"

cd ~/ && if [ -d "./carla" ]; then rm -rf ./carla; fi
cd ~/ && git clone https://github.com/carla-simulator/carla

echo -e "${RED} >> Download the latest assets to work with the current version of CARLA ${ENDCOLOR}"
cd ~/carla && ./Update.sh

echo -e "${RED} >> Setting up the environment variable in bashrc ${ENDCOLOR}"
echo 'export UE4_ROOT=~/UnrealEngine_4.26' >> ~/.bashrc 

echo -e "${RED} >> Check the clang version ${ENDCOLOR}"
clang --version

echo -e "${RED} >> Symlink ${ENDCOLOR}"
sudo ln -sf /usr/bin/clang++-10 /usr/bin/clang++-8
sudo ln -sf /usr/bin/clang-10 /usr/bin/clang-8

echo -e "${RED} >> Compiling the Python API Client ${ENDCOLOR}"
#make PythonAPI ARGS="--python-version=3.8"
make PythonAPI