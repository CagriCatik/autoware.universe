echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Complete CARLA - Linux build	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Ubuntu Version              	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'
lsb_release -a

echo $'\e[32m-------------------------------------------\e[0m'
echo $'\e[31m Check NVIDIA System Management Interface  \e[0m'
echo $'\e[32m-------------------------------------------\e[0m'
nvidia-smi


echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Install - Software requirements       \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

sudo apt-get update &&
sudo apt-get install wget software-properties-common &&
sudo add-apt-repository ppa:ubuntu-toolchain-r/test &&
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add - &&
sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-8 main" &&
sudo apt-get update
sudo apt-get install clang-8 \
		      lld-8 \
		      g++-7 \
		      cmake \
		      ninja-build \
		      libvulkan1 \
		      python3-dev \
		      python3-pip \
		      libpng-dev \
		      libtiff5-dev \
		      libjpeg-dev \
		      tzdata sed \
		      curl \
		      unzip \
		      autoconf \
		      libtool \
		      rsync \
		      libxml2-dev \
		      git


echo $'\e[32m---------------------------------------------------------\e[0m'
echo $'\e[31m  Build - Unreal Engine	 	     		 	 \e[0m'
echo $'\e[31m  This may take an hour or two depending on your system  \e[0m'
echo $'\e[32m---------------------------------------------------------\e[0m'

#cd ~/ && if [ -d "./UnrealEngine_4.26" ]; then rm -rf ./UnrealEngine_4.26; fi
#cd ~/ && git clone --depth 1 -b carla https://github.com/CarlaUnreal/UnrealEngine.git ~/UnrealEngine_4.26
#cd ~/UnrealEngine_4.26 && ./Setup.sh && ./GenerateProjectFiles.sh && make

echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[32m  Unreal Engine - DONE                 \e[0m'
echo $'\e[32m---------------------------------------\e[0m'


echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m       Build - CARLA	      	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

cd ~/ && if [ -d "./carla" ]; then rm -rf ./carla; fi
cd ~/ && git clone https://github.com/carla-simulator/carla
cd ~/carla && ./Update.sh


echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[32m     Unreal Engine - DONE              \e[0m'
echo $'\e[32m---------------------------------------\e[0m'






