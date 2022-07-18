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
Copy-paste below lines:
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

### Load the python version on command window
After creating a virtual environment for CARLA you have to load a python version in MATLAB with running the following command:

```py
pyversion('~/carla-env/bin/python')
```

After loading the python version restart MATLAB and run the command `pyversion` on command window:

```sh
       version: '3.8'
    executable: '/home/cc/carla-env/bin/python'
       library: 'libpython3.8.so.1.0'
          home: '/home/cc/carla-env'
      isloaded: 0
```

## Simple test for operation 

### Launch CARLA

Run the following command on the terminal:
```sh
source carla-env/bin/activate
cd /opt/carla && ./CarlaUE4.sh
```

### MATLAB

