#!/bin/bash
source /opt/ros/melodic/setup.bash
source /home/odroid/car_ws/devel/setup.bash 
gnome-terminal -- /bin/sh -c 'roscore; sleep 3; exec bash' & 

gnome-terminal -- /bin/sh -c 'roslaunch car_connect sensors.launch; exec bash' & 
gnome-terminal -- /bin/sh -c 'roslaunch car_connect car_2d_localization.launch load_state_filename:=${HOME}/Desktop/online_map_save.pbstream; exec bash' & 

gnome-terminal -- /bin/sh -c 'roslaunch car_tracking all.launch; exec bash' & 

