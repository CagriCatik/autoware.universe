# autoware.universe

## Single-Line Source Installation

The following bash script installs the dependecies using Ansible and sets up the workspace for autoware.universe. To set up workspace, install dependencies and build the workspace run the following commands: 
  
```bash
git clone https://github.com/CagriCatik/autoware.universe.git
cd ~/autoware/install
chmod +x ./autoware-universe.sh
bash ./autoware-universe.sh
```
To update the workspace run the following command: 

```bash
cd ~/autoware.universe/install
chmod +x ./update.sh
bash ./update.sh
```

## Official Tutorial
Simulations provide a way of verifying Autoware's functionality before field testing with an actual vehicle.
There are three main types of simulation (Planning, Rosbag, Digital twin simulation) that can be run ad hoc or via a scenario runner. [Simulation tutorials](https://github.com/CagriCatik/autoware.universe/autoware/README.md) explain several tutorials that you should try after installation