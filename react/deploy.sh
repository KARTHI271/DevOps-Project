#!/bin/bash

echo "Stopping old container (if exists)..."
docker rm -f react-container || true

echo "Pulling latest production image..."
docker pull karthi271/react-app-prod:latest

echo "Starting new container..."
docker run -d \
  -p 80:80 \
  --restart always \
  --name react-container \
  karthi271/react-app-prod:latest
