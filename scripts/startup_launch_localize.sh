#!/bin/bash
 
mate-terminal -- /bin/sh -c 'roscore; exec bash'&
mate-terminal -- /bin/sh -c 'roslaunch --wait car_connect sensors.launch; exec bash' & 
mate-terminal -- /bin/sh -c 'roslaunch --wait car_connect car_2d_localization.launch load_state_filename:=${HOME}/Desktop/online_map_save.pbstream; exec bash' & 
#mate-terminal -- /bin/sh -c 'roslaunch --wait car_connect car_2d_mapping.launch; exec bash' & 

mate-terminal -- /bin/sh -c 'roslaunch --wait car_tracking all.launch; exec bash' & 

