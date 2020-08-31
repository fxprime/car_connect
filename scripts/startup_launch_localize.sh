#!/bin/bash
 
source /opt/ros/melodic/setup.bash
source ~/car_ws/devel/setup.bash
 
export ROS_IP=192.168.1.54

mate-terminal -- /bin/sh -c 'roscore; exec bash'&
mate-terminal -- /bin/sh -c 'roslaunch --wait car_connect sensors.launch; exec bash' & 
<<<<<<< HEAD
mate-terminal -- /bin/sh -c 'echo "waiting before launch" &&sleep 30 && echo "wait finished" && roslaunch --wait car_connect car_2d_localization.launch load_state_filename:=${HOME}/Desktop/online_map_save.pbstream; exec bash' & 
#mate-terminal -- /bin/sh -c 'echo "waiting before launch" &&sleep 10 && echo "wait finished" && roslaunch --wait car_connect car_2d_mapping.launch; exec bash' & 
=======
mate-terminal -- /bin/sh -c 'roslaunch --wait car_connect car_2d_localization.launch load_state_filename:=${HOME}/Desktop/online_map_save.pbstream; exec bash' & 
#mate-terminal -- /bin/sh -c 'roslaunch --wait car_connect car_2d_mapping.launch; exec bash' & 
>>>>>>> a8bc451cc878a9457d8aa2908d2f219b5e75a850

mate-terminal -- /bin/sh -c 'roslaunch --wait car_tracking all.launch; exec bash' & 
