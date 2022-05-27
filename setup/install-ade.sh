#!/bin/bash
# reference sites
# https://ade-cli.readthedocs.io/en/latest/install.html#requirements

sudo apt-get update
echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Clone the ade from gitlab	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

cd ~/Downloads
sudo wget https://gitlab.com/ApexAI/ade-cli/-/jobs/1341322851/artifacts/raw/dist/ade+x86_64
file="ade+x86_64"
if [ -e "$file" ];then rm -rf "$file" ; fi
#Rename
mv ade+x86_64 ade
sudo chmod +x ade
./ade --version
./ade update-cli


echo $'\e[32m---------------------------------------\e[0m'
echo $'\e[31m Move ade into /usr/local/bin	      \e[0m'
echo $'\e[32m---------------------------------------\e[0m'

sudo mv ade /usr/bin
cd ~/autoware.auto/setup



