#!/bin/bash
 
source /opt/ros/melodic/setup.bash
source ~/car_ws/devel/setup.bash
 
export ROS_IP=127.0.0.1 #192.168.31.73 #192.168.1.54
export ROS_MASTER_URI=http://${ROS_IP}:11311	

mate-terminal -- /bin/sh -c 'roscore; exec bash'&
mate-terminal -- /bin/sh -c 'roslaunch --wait car_connect sensors.launch; exec bash' & 
mate-terminal -- /bin/sh -c 'roslaunch --wait car_connect car_2d_localization.launch load_state_filename:=${HOME}/Desktop/online_map_save.pbstream; exec bash' & 
#mate-terminal -- /bin/sh -c 'roslaunch --wait car_connect car_2d_mapping.launch; exec bash' & 

mate-terminal -- /bin/sh -c 'roslaunch --wait car_tracking all.launch; exec bash' & 

