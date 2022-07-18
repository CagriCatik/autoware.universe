
RED="\e[31m"
GREEN="\e[33m"
ENDCOLOR="\e[0m"

echo -e "${RED}>> Begin of script${ENDCOLOR}"

#echo -e "${GREEN}Extracting the files of TierIVSimulatorPackage${ENDCOLOR}"
#cd ~/ && tar -xf TierIVSimulatorPackage.tar.xz

echo -e "${GREEN}>> Change to home directory${ENDCOLOR}"
cd ~/

echo -e "${GREEN}>> Cloning the e2e simulator branch${ENDCOLOR}"
git clone https://github.com/tier4/autoware.git

echo -e "${GREEN}>>Check out the e2e simulator branch and switch into it${ENDCOLOR}"
cd ~/autoware && git checkout feature/e2e_simulator_stable

echo -e "${GREEN}>> running the ansible script${ENDCOLOR}"
cd ~/autoware && echo y | ./setup-dev-env.sh

echo -e "${GREEN}>> import autoware.repos and create src directory${ENDCOLOR}"
cd ~/autoware && mkdir src
vcs import src < autoware.repos

echo -e "${GREEN}>> rosdep update and install${ENDCOLOR}"
source /opt/ros/galactic/setup.bash
rosdep update && rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO


echo -e "${GREEN}>> Applying the patch to universe to fix object detection${ENDCOLOR}"
cd ~/autoware/src/universe/autoware.universe
git apply ~/TierIVSimulatorPackage/autoware.universe.patch


echo -e "${GREEN}>> Back to autoware workspace${ENDCOLOR}"
cd ../..


echo -e "${GREEN}>> Applying the patch for launcher${ENDCOLOR}"
cd ~/autoware/src/launcher
git apply ~/TierIVSimulatorPackage/launcher.patch


echo -e "${GREEN}back to autoware autoware directory${ENDCOLOR}"
cd ../..

echo -e "${GREEN}>> Run Colcon Build without planning rviz plugin${ENDCOLOR}"
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release --packages-ignore tier4_planning_rviz_plugin

echo -e "${GREEN}>> Check .onnx files${ENDCOLOR}"
cd ~/autoware 
ls src/universe/autoware.universe/perception/lidar_centerpoint/data 

echo -e "${GREEN}>> Copy of 4 .onnx files${ENDCOLOR}"
cd ~/autoware
cp ~/TierIVSimulatorPackage/lidar_centerpoint_data/* ~/autoware/src/universe/autoware.universe/perception/lidar_centerpoint/data

echo -e "${RED}End of script${ENDCOLOR}"

# Lidar Centerpoint
# ros2 launch autoware_launch autoware.launch.xml map_path:=/home/cc/TierIVSimulatorPackage/KashiwanohaMaps vehicle_model:=sample_vehicle sensor_model:=sample_sensor_kit | grep lidar_centerpoint


