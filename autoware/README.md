# Simulation tutorial

Simulations provide a way of verifying Autoware's functionality before field testing with an actual vehicle.
There are three main types of simulation that can be run ad hoc or via a scenario runner.

## Planning Scenario
- Planning simulation uses simple dummy data to test the Planning and Control components - specifically path generation, path following and obstacle avoidance. 
- It verifies that a vehicle can reach a goal destination while avoiding pedestrians and surrounding cars, and is another method for verifying the validity of Lanelet2 maps. 
- It also allows for testing of traffic light handling.
- **Step 1:** Launch Autoware wiht following commands:

```sh
source ~/autoware/install/setup.bash
ros2 launch autoware_launch planning_simulator.launch.xml map_path:=$HOME/autoware.universe/simulation/sample-map-planning vehicle_model:=sample_vehicle sensor_model:=sample_sensor_kit
```

- **Step 2:** `Panels -> Add new panel`  select `AutowareStatePanel` and `TrafficLightPublishPanel`
- **Step 3:** Set an initial pose for the ego vehicle `2D Pose Estimate`
- **Step 4:** Set a goal pose for the ego vehicle `2D Goal Pose`
- **Step 5:** Engage the ego vehicle on `AutoWareStatePanel`. As an alternative to engage the ego vehicle run the following command:
```sh
source ~/autoware/install/setup.bash
ros2 topic pub /autoware/engage autoware_auto_vehicle_msgs/msg/Engage "engage: true" -1
```

## Parking Scenario

- **Step:** After launching the simulation set an initial and a goal pose on a parking spot, then engage the ego vehicle
- **Observation 1:** When the vehicle approaches the goal, it will switch from lane driving mode to parking mode.
- **Observation 1:** After that, the vehicle will reverse into the destination parking spot.
  
```sh

ros2 launch random_test_runner random_test.launch.py \
  architecture_type:=awf/universe \
  sensor_model:=sample_sensor_kit \
  vehicle_model:=sample_vehicle

```

## Advanced scenario

Dummy Objects
 
- **Step 1:** Click the  `2D Dummy Car` or `2D Dummy Pedestrian` 
- **Step 2:** Set the pose of  `2D Dummy Car` or `2D Dummy Pedestrian` by click and drag
- **Step 3:** Set or change the velocity  of the dummy objects in the `Tool Properties -> 2D Dummy Car/Pedestrian` panel
- **Optional:** Delete any dummy objects placed in the view by clicking the `Delete All Objects` button in the toolbar.

Traffic Light Recognition

By default, traffic lights on the map are all treated as if they are set to green. As a result, when a path is created that passed through an intersection with a traffic light, the ego vehicle will drive through the intersection without stopping. The following steps explain how to set and reset traffic lights in order to test how the Planning component will respond.


- **Step 1:** Set traffic light In TrafficLightPublishPanel, set the ID and color of the traffic light, then click the `SET` button.
- **Step 1:** Click the `PUBLISH` button to send the traffic light status to the simulator. Any planned path that goes past the selected traffic light will then change accordingly.
- **Optional:** Update the color of the traffic light by selecting the next color and clicking `SET` button.

## Scenario test simulation

Move to the workspace dir and source the workspace setup script. Run the **scenario test simulation** with following command:

```sh
cd ~/autoware
source install/setup.bash
ros2 launch scenario_test_runner scenario_test_runner.launch.py \
  architecture_type:=awf/universe \
  record:=false \
  scenario:='$(find-pkg-share scenario_test_runner)/scenario/sample.yaml' \
  sensor_model:=sample_sensor_kit \
  vehicle_model:=sample_vehicle
```
- Move to the workspace dir and source the workspace setup script. 
- Run the **random test simulation**  with following command:

```sh
cd ~/autoware
source install/setup.bash
ros2 launch random_test_runner random_test.launch.py \
  architecture_type:=awf/universe \
  sensor_model:=sample_sensor_kit \
  vehicle_model:=sample_vehicle
```

## Rosbag replay simulation

Rosbag replay simulation uses prerecorded rosbag data to test the following aspects of the Localization and Perception components:
- Localization: Estimation of the vehicle's location on the map by matching sensor and vehicle feedback data to the map.
- Perception: Using sensor data to detect, track and predict dynamic objects such as surrounding cars, pedestrians, and other objects


Launch Autoware:

```sh
source ~/autoware/install/setup.bash
ros2 launch autoware_launch logging_simulator.launch.xml map_path:=$HOME/autoware.universe/rosbag/sample-map-rosbag vehicle_model:=sample_vehicle sensor_model:=sample_sensor_kit
```

Play the sample rosbag file:

```sh
source ~/autoware/install/setup.bash
ros2 bag play ~/autoware.universe/rosbag/sample-rosbag/sample.db3 -r 0.2
# WTF! No rosbag in the zip-file
```