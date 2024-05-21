#!/bin/bash
set -e

echo "Starting deployment..."
docker-compose -f docker-compose.yml up -d --build
echo "Deployment completed successfully."