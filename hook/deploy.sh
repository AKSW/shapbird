#! /bin/bash

docker-compose -f deploy-docker-compose.yml up
docker-compose -f deploy-docker-compose.yml down -v 
