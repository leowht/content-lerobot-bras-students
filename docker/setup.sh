#!/bin/sh
docker compose build
xhost +local:docker
docker compose up -d control viz --force-recreate

# docker compose exec control bash -lc "source /ros2_ws/install/setup.bash && rviz2"
docker compose exec control bash -lc "source /ros2_ws/install/setup.bash && rviz2 -d /ros2_ws/so101.rviz"

# source /opt/ros/jazzy/setup.bash
# source /ros2_ws/install/setup.bash
