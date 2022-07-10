# MATLAB-Simulink

## Download and install MATLAB R2022a on Ubuntu
Download the installer file `matlab_R2022a_glnxa64.zip` for acedemic use from [MathWorks](https://de.mathworks.com/login?uri=%2Flicensecenter%2Flicenses%2F40908578%2F7275440%2Factivations)

```sh
cd ~/autoware.universe/matlab-simulink
chmod +x install.sh && bash install.sh
```
* Enter your email address and password
* Select the desired toolboxes and install them

## Create a desktop launcher for MATLAB

Create a desktop shortcut
```sh
sudo gedit ~/.local/share/applications/matlab.desktop
```
Copy-paste bellow lines:
```sh
[Desktop Entry]
Version=1.0
Type=Application
Name=MATLAB
Exec=/usr/local/MATLAB/R2022a/bin/glnxa64/MATLAB -desktop
Icon=/usr/local/MATLAB/R2022a/bin/glnxa64/cef_resources/matlab_icon.png
Terminal=false
```

## CARLA - MATLAB-Simulink Interface
