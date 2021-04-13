#!/bin/bash

echo " ---- WARNING ---- "
echo "Type Stop to just stop the containers and remove to stop and prune"
echo "Do you want to continue ? stop/remove"

read userInput

if [ $userInput = "stop" ]; then 
	docker stop $(docker ps -a -q)
fi
if [ $userInput = "remove" ]; then 
	docker stop $(docker ps -a -q) && docker container prune -f
fi



