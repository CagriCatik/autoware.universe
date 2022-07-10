echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m       Build - CARLA	      	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

sudo apt-get install aria2

cd ~/ && if [ -d "./carla" ]; then rm -rf ./carla; fi
cd ~/ && git clone https://github.com/carla-simulator/carla
cd ~/carla && ./Update.sh

echo 'export UE4_ROOT=~/UnrealEngine_4.26' >> ~/.bashrc 

