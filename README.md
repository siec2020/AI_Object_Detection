# AI_Object_Detection

This repository contains all the software regarding our Convolutional Neural Networks implementation on the *Jetson Nano*.
We actually implemented two Convolutional Neural Networks:
    
1. multiped: it was already trained and detects humans and their luggages
2. a custom Mobilenet-SSD: we trained it ourselves to fit specific classes:
    * person
    * baggage
    * ball
    * bicycle
    * bus
    * car
    * cat
    * dog
    * motorcycle

This software basically detects humans or objects of the previously listed classes and sends video streaming with the detections on an *image* ROS topic and *UInt8* ROS messages on a ROS topic named */detection* that corresponds to one of the classes (see [classes corresponding numbers](./aarch64/bin/GEIcar_Project/classes_training.txt)).

A more detailled *README* can be found in the folder where all the scripts are located: [scripts folder](./aarch64/bin/GEIcar_Project)

### How to go to the script repository
Execute `cd ./aarch64/bin/GEIcar_Project` in a terminal opened in this folder.

### How to use the *launch* files
* The first launch file is designed to change the *ROS_IP* and the *ROS_MASTER_URI* as the *roscore* is not running on the Jetson Nano but on the Raspberry PI. It then runs the detection main script. 
If it is your case execute the command `./launch.sh` in any terminal opened in this folder.

    **_NB:_** *DO NOT FORGET TO MODIFY* **ROS_IP** *AND* **ROS_MASTER_URI** *TO FIT YOUR ROS CONFIGURATION.*


* If you want to test the software with a local *roscore*, then  execute the command `./launch_local.sh` in any terminal opened in this folder after having runned a *roscore*.