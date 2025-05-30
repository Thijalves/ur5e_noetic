# Minimal ROS Noetic + UR driver/calibration + RealSense
FROM osrf/ros:noetic-desktop

# Install UR robot driver, calibration, and RealSense2 camera packages
RUN apt-get update && \
    apt-get install -y \
      ros-noetic-ur-robot-driver \
      ros-noetic-ur-calibration \
      ros-noetic-realsense2-camera && \
    rm -rf /var/lib/apt/lists/*