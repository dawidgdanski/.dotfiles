#!/bin/bash

draw_divider() {
  echo
  echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
  echo
}

draw_divider

echo "Docker commands"

draw_divider

echo "Run docker container (--rm = remove container from processes, -ti = attach CLI input, --name = container name so you can easily stop it)"
echo "docker container run --rm -ti --name ubuntu_container ubuntu:latest"

echo

echo "Stop the container by its name"
echo "docker container stop ubuntu_container"

draw_divider

echo "List docker container ids only:"
echo "docker ps -a -q"

draw_divider

echo "Inspect the container"
echo "docker container inspect ubuntu_container"

draw_divider

echo "Docker Server information"
echo "docker info"

draw_divider

echo "Stats of the containers"
echo "docker stats"

draw_divider

echo "Listen to Docker events"
echo "docker events"

draw_divider

echo "Run cadvisor https://github.com/google/cadvisor"

echo """
 docker run \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:ro \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --volume=/dev/disk/:/dev/disk:ro \
  --publish=8080:8080 \
  --detach=true \
  --name=cadvisor \
  --privileged \
  --device=/dev/kmsg \
  gcr.io/cadvisor/cadvisor:v0.47.2
"""