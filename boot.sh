#!/bin/bash

output=$(docker-machine status)
if [ $output -eq "Running" ]; then
  eval $(docker-machine env)
  docker-machine start
fi

docker-compose -f dome.yml up -d
