#!/bin/bash

#update from server
sudo apt-get update
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update

#install ROS melodic
sudo apt install ros-melodic-desktop
sudo rosdep init
rosdep update
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

#miscellaneous
sudo apt-get update
sudo apt-get -y install cmake minicom python-catkin-pkg python-empy python-nose python-setuptools libgtest-dev python-rosinstall python-rosinstall-generator python-wstool build-essential git vim

#environment setting
mkdir ~/catkin_ws
cd ~/catkin_ws/
mkdir -p ~/catkin_ws/src
catkin_make
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
source ~/catkin_ws/devel/setup.bash
