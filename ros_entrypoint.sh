#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
exec "$@"

# Create a catkin workspace with the package under integration.
mkdir -p ~/sara_ws/src
cd ~/sara_ws/src
catkin_init_workspace
cd ~/sara_ws
catkin_make
source devel/setup.bash
