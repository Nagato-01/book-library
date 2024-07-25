#!/bin/bash
docker network create jenkins
docker volume create jenkins_home

docker run -d --name jenkins \
    --network jenkins \
    -v jenkins_home:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -p 8080:8080 -p 50000:50000 \
    jenkins/jenkins:lts
