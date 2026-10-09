#!/bin/sh
docker compose build
xhost +local:docker
docker compose up -d control viz

docker compose exec control bash -lc "source /ros2_ws/install/setup.bash && rviz2"

# source /opt/ros/jazzy/setup.bash
# source /ros2_ws/install/setup.bash
