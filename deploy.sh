#!/bin/bash
set -e
  
echo " killing all the existing containers"
#docker rm -f $(docker ps -a -q)   

echo "Starting deployment..."
docker-compose -f docker-compose.yml up -d --build
echo "Deployment completed successfully."