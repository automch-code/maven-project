#!/bin/bash

# Copy the new jar to the build location
cp java-app/target/*.jar jenkins/build/

echo "Build docker image..."

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache