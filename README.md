
<div align="center">

  <h1>autoware.universe</h1>
  
  <p>
    Autoware is an open-source autonomous driving software based on Linux and ROS. autoware.universe is an open-source software project for autonomous driving which is built on ROS2 and enables commercial deployment of autonomous driving in a broad range of vehicles and applications. Autoware provides a rich set of self-driving modules composed of sensing, computing, and actuation capabilities. 
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
This repository is constantly under construction . For this reason, some links may not work properly.
- [Table of Contents](#table-of-contents)
  - [autoware.universe](#autowareuniverse)
    - [Installation](#installation)
    - [Tutorials](#tutorials)
  - [CARLA](#carla)
    - [Build CARLA on Linux](#build-carla-on-linux)
    - [Tutorial](#tutorial)
    - [Installation ROS2 Bridge](#installation-ros2-bridge)
  - [tierIVsim](#tierivsim)
    - [Installation](#installation-1)
    - [Tutorial](#tutorial-1)
  - [MORAI SIM: Drive](#morai-sim-drive)
    - [Installation](#installation-2)
    - [Tutorial](#tutorial-2)
  - [MATLAB-Simulink](#matlab-simulink)
    - [Installation on Ubuntu 20.04](#installation-on-ubuntu-2004)
    - [CARLA - MATLAB-Simulink Interface](#carla---matlab-simulink-interface)
    - [CARLA - ROS2 Bridge](#carla---ros2-bridge)
    - [RoadRunner](#roadrunner)
  - [Runtime Manager](#runtime-manager)
    - [Foxglove Studio](#foxglove-studio)
    - [Requirements](#requirements)
  - [Roadmap](#roadmap)
  - [Source](#source)
  - [Troubleshooting](#troubleshooting)
  
## [autoware.universe](https://github.com/CagriCatik/autoware.universe/tree/main/autoware/README.md)

### Installation

[Single line source installation of autoware.universe](https://github.com/CagriCatik/autoware.universe/tree/main/autoware/README.md)

### Tutorials

[Official tutorials of autoware.universe](https://github.com/CagriCatik/autoware.universe/tree/main/autoware/tutorial/README.md)


[<<< Go back](#table-of-contents)


## [CARLA](https://carla.readthedocs.io/en/latest/)

### Build CARLA on Linux

[Installation Manual](https://github.com/CagriCatik/autoware.universe/carla/README.md)

### Tutorial 

[Installation Manual](https://github.com/CagriCatik/autoware.universe/carla/Tutorial.md)

### Installation ROS2 Bridge

[Installation Manual](https://github.com/CagriCatik/autoware.universe/carla/install.md)


[Go back](#table-of-contents)

## [tierIVsim]()

### Installation
[Installation Manual](https://github.com/CagriCatik/autoware.universe/tree/main/simulator/README.md)

### Tutorial 
[Tutorial](https://github.com/CagriCatik/autoware.universe/tree/main/simulator/Tutorial.md)

[Go back](#table-of-contents)


## [MORAI SIM: Drive](https://www.google.com/search?channel=fs&client=ubuntu&q=MORAI+SIM%3A+Drive)

### Installation

[Installation Manual](https://github.com/CagriCatik/autoware.universe/carla/build.md)

### Tutorial 

[Tutorial](https://github.com/CagriCatik/autoware.universe/simulator/build.md)

[Go back](#table-of-contents)

## MATLAB-Simulink

### Installation on Ubuntu 20.04 
[Installation Manual](https://github.com/CagriCatik/autoware.universe/carla/build.md)

### CARLA - MATLAB-Simulink Interface
[Installation Manual](https://github.com/CagriCatik/autoware.universe/matlab-simulink/README.md)

### CARLA - ROS2 Bridge
[Installation Manual](https://github.com/CagriCatik/autoware.universe/matlab-simulink/install.md)

### [RoadRunner]()
[Installation Manual](https://github.com/CagriCatik/autoware.universe/matlab-simulink/install.md)

[Go back](#table-of-contents)
## [Runtime Manager](https://github.com/CagriCatik/autoware.universe/tree/main/runtime-manager/README.md)

### [Foxglove Studio](https://foxglove.dev/blog/using-rosbridge-with-ros2)

[Installation Manual](https://github.com/CagriCatik/autoware.universe/tree/main/runtime-manager/foxglove/README.md)

### [Requirements](https://github.com/CagriCatik/autoware.universe/tree/main/runtime-manager/requirements/README.md)

[Go back](#table-of-contents)

<!-- Roadmap -->
## Roadmap
* [ ] [Autoware Core/Universe](https://autowarefoundation.github.io/autoware-documentation/main/design/autoware-concepts/difference-from-ai-and-auto/)
* [ ] [Understand the tutorials of autoware.universe](https://autowarefoundation.github.io/autoware-documentation/main/tutorials/)
* [ ] [Understand the architecture of autoware.universe](https://autowarefoundation.github.io/autoware-documentation/main/design/autoware-architecture/)
* [x] Test autoware.universe on tierIVsim
* [ ] Test autoware.universe on MORAI SIM: Drive
* [ ] [Re-implementation of Runtime Manager](https://raw.githubusercontent.com/CPFL/Autoware-Manuals/master/en/Autoware_UsersManual_v1.1.pdf)
* [ ] [Runtime Manager GUI](https://github.com/CPFL/Autoware-Manuals/tree/master/en) 
* [ ] [Foxglove Studio visualization and debugging tool](https://foxglove.dev/)
* [x] Installation & Setup MATLAB-Simulink
* [ ] Implementing of an ROS2-Bridge between autoware.universe - CARLA
* [ ] Implementing of an interface between CARLA and MATLAB
* [ ] Implementing of an interface between CARLA and ROS2
* [ ] Implementing of an interface between Autoware and MATLAB
* [ ] [Understand the functionality RoadRunner Scenario](https://www.mathworks.com/products/roadrunner-scenario.html)
* [ ] Test all bash scripts

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

- Problem with `protobuf-compiler` - solved
  - Uninstall ROS Galactic, if installed before
  - Purge/Uninstall the `protobuf`
  - Run the `Single-Line-Installation` for autoware.universe
- Problem with CARLA-Build - solved
  - Different compiler version between Ubuntu 20.04 and CARLA
- Problem with CARLA-ROS2-Bridge
  - Cannot locate rosdep definition for [derived_object_msgs] - not solved
- Problem with interfacing between CARLA and MATLAB
