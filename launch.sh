#!/bin/bash

cd $HOME/Desktop/git/AI_Object_Detection/aarch64/bin/GEIcar_Project

export ROS_MASTER_URI=http://169.254.130.178:11311
export ROS_IP=169.254.82.228

python3.6 main.py
