#!/bin/bash

echo " ---- INFO ---- "
echo "Restarting docker"

docker restart $(docker ps -a -q)

