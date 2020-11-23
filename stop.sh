#!/bin/bash

docker stop $(docker ps | grep -v CONTAINER | awk '{print $1}')


