#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOCKER_IMAGE_NAME=dearnova/dn-quiz-service

# Build project
mvn -f $DIR/pom.xml clean install "$@"

# Check if last command was successful
if [ $? -ne 0 ]; then
    exit $?
fi

# Build Docker Image
$DIR/mvnw com.google.cloud.tools:jib-maven-plugin:dockerBuild \
  -Dimage=$DOCKER_IMAGE_NAME
