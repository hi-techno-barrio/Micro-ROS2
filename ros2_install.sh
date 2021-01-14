
locale  # check for UTF-8

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings

sudo apt update && sudo apt install curl gnupg2 lsb-release
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -c -s) main" > /etc/apt/sources.list.d/ros2-latest.list'

sudo apt update
#Desktop Install (Recommended): ROS, RViz, demos, tutorials.

sudo apt install ros-eloquent-desktop
ROS-Base Install (Bare Bones): Communication libraries, message packages, command line tools. No GUI tools.

sudo apt install ros-eloquent-ros-base
source /opt/ros/eloquent/setup.bash

sudo apt install -y python3-pip
pip3 install -U argcomplete

source /opt/ros/eloquent/setup.bash
ros2 run demo_nodes_cpp talker

source /opt/ros/eloquent/setup.bash
ros2 run demo_nodes_py listener

# Download  XentrinoBot Repository

# Ceate Workspace
mkdir -p ~/xentrinobot_ws/src
cd ~/xentrinobot_ws/src

