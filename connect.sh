#!/bin/bash

echo " ---- WARNING ---- "
echo "Enter the container name"

read userInput

docker exec -it $userInput bash

