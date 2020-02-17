#! /bin/bash

docker-compose -f deploy-docker-compose.yml -p deploy-shapbird up
docker-compose -f deploy-docker-compose.yml -p deploy-shapbird down -v 
