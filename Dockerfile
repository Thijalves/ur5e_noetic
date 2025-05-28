# Minimal ROS Noetic + UR driver/calibration
FROM osrf/ros:noetic-desktop

# Install only the UR robot driver and calibration packages
RUN apt-get update && \
    apt-get install -y \
      ros-noetic-ur-robot-driver \
      ros-noetic-ur-calibration && \
    rm -rf /var/lib/apt/lists/*