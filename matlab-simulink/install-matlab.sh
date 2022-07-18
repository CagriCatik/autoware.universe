#!/bin/bash

cd ~/Downloads
unzip matlab_R2022a_glnxa64.zip -d matlab_R2022a
cd ~/Downloads/matlab_R2022a
sudo mkdir -p /usr/local/MATLAB/R2022a
xhost +SI:localuser:root && sudo ./install  