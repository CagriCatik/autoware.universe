
<div align="center">

  <h1>autoware.universe</h1>
  
  <p>
    autoware.universe is an open-source software project for autonomous driving which is built on ROS2 and enables commercial deployment of autonomous driving in a broad range of vehicles and applications. Autoware provides a rich set of self-driving modules composed of sensing, computing, and actuation capabilities. 
  </p>

  
<!-- Badges -->
<p>
  <a href="https://github.com/CagriCatik/autoware.universe/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/CagriCatik/autoware.universe" alt="contributors" />
  </a>
  <a href="">
    <img src="https://img.shields.io/github/last-commit/CagriCatik/autoware.universe" alt="last update" />
  </a>
  <a href="https://github.com/CagriCatik/autoware.universe/network/members">
    <img src="https://img.shields.io/github/forks/CagriCatik/autoware.universe" alt="forks" />
  </a>
  <a href="https://github.com/CagriCatik/autoware.universe/stargazers">
    <img src="https://img.shields.io/github/stars/CagriCatik/autoware.universe" alt="stars" />
  </a>
  <a href="https://github.com/CagriCatik/autoware.universe/issues/">
    <img src="https://img.shields.io/github/issues/CagriCatik/autoware.universe" alt="open issues" />
  </a>
</p>
   
</div>

<br />

<!-- Table of Contents -->
# Table of Contents

- [Table of Contents](#table-of-contents)
  - [autoware.universe](#autowareuniverse)
    - [Single-Line Source Installation](#single-line-source-installation)
    - [Official Tutorial](#official-tutorial)
  - [CARLA](#carla)
    - [Build CARLA on Linux](#build-carla-on-linux)
    - [Installation ROS2 Bridge](#installation-ros2-bridge)
  - [MATLAB-Simulink](#matlab-simulink)
    - [CARLA - MATLAB-Simulink Interface](#carla---matlab-simulink-interface)
    - [Installation ROS2 Bridge](#installation-ros2-bridge-1)
    - [RoadRunner](#roadrunner)
  - [Runtime Manager](#runtime-manager)
    - [Foxglove Studio](#foxglove-studio)
    - [Requirements](#requirements)
  - [Roadmap](#roadmap)
  - [Source](#source)
  - [Troubleshooting](#troubleshooting)
  
## autoware.universe
<!-- Installation -->
### Single-Line Source Installation

The following bash script installs the dependecies using Ansible and sets up the workspace for autoware.universe. To set up workspace, install dependencies and build the workspace run the following commands: 
  
```bash
git clone https://github.com/CagriCatik/autoware.universe.git
cd ~/autoware.universe/install
chmod +x ./autoware-universe.sh
bash ./autoware-universe.sh
```
To update the workspace run the following command: 

```bash
cd ~/autoware.universe/install
chmod +x ./update.sh
bash ./update.sh
```

### Official Tutorial
Simulations provide a way of verifying Autoware's functionality before field testing with an actual vehicle.
There are three main types of simulation (Planning, Rosbag, Digital twin simulation) that can be run ad hoc or via a scenario runner. [Simulation tutorials](https://github.com/CagriCatik/autoware.universe/autoware/README.md) explain several tutorials that you should try after installation

[Go back](#table-of-contents)
## [CARLA](https://carla.readthedocs.io/en/latest/)

### Build CARLA on Linux

[Installation Manual](https://github.com/CagriCatik/autoware.universe/carla/build.md)

```bash
cd ~/autoware.universe/
chmod +x ./
bash ./
```

### Installation ROS2 Bridge

[Installation Manual](https://github.com/CagriCatik/autoware.universe/matlab-simulink/install.md)

```bash
cd ~/autoware.universe/
chmod +x ./
bash ./
```
[Go back](#table-of-contents)

## MATLAB-Simulink

[Installation Manual](https://github.com/CagriCatik/autoware.universe/matlab-simulink/README.md)

```bash
cd ~/autoware.universe/
chmod +x ./
bash ./
```

### CARLA - MATLAB-Simulink Interface

```bash
cd ~/autoware.universe/
chmod +x ./
bash ./
```

### Installation ROS2 Bridge

[Installation Manual](https://github.com/CagriCatik/autoware.universe/matlab-simulink/install.md)

```bash
cd ~/autoware.universe/
chmod +x ./
bash ./
```

### RoadRunner

[Installation Manual](https://github.com/CagriCatik/autoware.universe/matlab-simulink/install.md)


[Go back](#table-of-contents)
## Runtime Manager

### [Foxglove Studio](https://foxglove.dev/blog/using-rosbridge-with-ros2)

Single-Line source installation

```bash
cd ~/autoware.universe/runtime-manager
chmod +x ./install.sh && bash ./install.sh
```
### Requirements

[Go back](#table-of-contents)

<!-- Roadmap -->
## Roadmap
* [ ] [Autoware Core/Universe](https://autowarefoundation.github.io/autoware-documentation/main/design/autoware-concepts/difference-from-ai-and-auto/)
* [ ] [Understand the tutorials of autoware.universe](https://autowarefoundation.github.io/autoware-documentation/main/tutorials/)
* [ ] [Understand the architecture of autoware.universe](https://autowarefoundation.github.io/autoware-documentation/main/design/autoware-architecture/)
* [ ] [Runtime Manager GUI](https://github.com/CPFL/Autoware-Manuals/tree/master/en) 
* [ ] [Foxglove Studio visualization and debugging tool](https://foxglove.dev/)
* [ ] Installation & Setup MATLAB-Simulink
* [ ] autoware.universe - CARLA - Bridge
* [ ] CARLA - MATLAB/Simulink - autoware.universe
* [ ] [RoadRunner Scenario](https://www.mathworks.com/products/roadrunner-scenario.html)

[Go back](#table-of-contents)
<!-- Source -->
## Source
 - [Official Repository - autoware.universe](https://github.com/autowarefoundation/autoware.universe)
 - [Autoware Documentation](https://autowarefoundation.github.io/autoware-documentation/main/)
 - [Autoware Tutorials](https://autowarefoundation.github.io/autoware-documentation/main/tutorials/)
 - [ROS Bridge installation for ROS2](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros2/)
 - [Getting Started with RoadRunner](https://de.mathworks.com/videos/series/getting-started-with-roadrunner.html)

[Go back](#table-of-contents)
<!-- Troubleshooting -->
## Troubleshooting

- Problem with `protobuf-compiler`
  - Uninstall ROS Galactic, if installed before
  - Purge/Uninstall the `protobuf`
  - Run the `Single-Line-Installation` for autoware.universe
- Problem with CARLA-Build
  - a 
