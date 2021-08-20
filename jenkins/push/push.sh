#!/bin/bash

echo "***********************"
echo "*****PUSHING IMAGE*****"
echo "***********************"
echo " "
IMAGE="maven-project"

docker login -u ruttapong -p $PASS

docker tag $IMAGE:$BUILD_TAG ruttapong/$IMAGE:$BUILD_TAG

docker push ruttapong/$IMAGE:$BUILD_TAG