# CARLA


## [CARLA - Linux Build](https://carla.readthedocs.io/en/latest/build_linux/)

## Unreal Engine Installation

Single line source file

```sh
cd ~/autoware.universe/simulator/carla/chmod +x ./ue4-build.sh
```

### Adding GitHub Account

```sh

```

### Download and compile Unreal Engine 4.26

```sh

```

## Change the compiler version on Ubuntu 20

```sh
sudo gedit sources_list
```

Locate in the `source_list` file in the following line and remove or comment:
```sh
deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-8 main
```


```sh
sudo apt-get update
sudo apt-get install clang-8
```

```sh
make PythonAPI ARGS="--python-version=3.8"
```

## Create a virtual environment for CARLA

```sh
python3 -m venv carla-env
source carla-env/bin/activate
export PYTHONPATH=$PYTHONPATH:~/opt/carla/>/PythonAPI/carla/dist/carla-0.9.13-py3.8-linux-x86_64.egg
python3 -c 'import carla;print("Success")'
pip install -r ~/autoware.universe/simulator/carla/requirements.txt
```

## Run CARLA

```sh
cd /opt/carla && ./CarlaUE4.sh
```

```sh

```
