#!/bin/bash

echo "Building Docker image..."
docker build -t react-app ./react

echo "Tagging image..."
docker tag react-app:latest karthi271/react-app-prod:latest

echo "Pushing image to Docker Hub..."
docker push karthi271/react-app-prod:latest
