#!/bin/bash
set -e
  
echo " killing all the existing containers"
#assuming there is an existing container running if there is not container then we can commnet below line 
docker rm -f $(docker ps -a -q)   

echo "Starting deployment..."
docker-compose -f docker-compose.yml up -d --build
echo "Deployment completed successfully."