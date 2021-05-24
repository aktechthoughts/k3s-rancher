#!/bin/bash

docker stop $(docker ps | grep -v CONTAI | awk '{ print $1}') > /dev/null 2>&1
docker rmi $(docker images | grep -v REP | awk '{print $3}') -f
docker volume rm $(docker volume ls | grep -v DRIVER | awk '{print $2 }')




