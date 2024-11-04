#!/bin/bash

docker stop gochro
docker rm gochro
docker rmi gochro
docker build -t gochro .
docker run -d --publish 8080:8080 --security-opt seccomp="chrome.json" --name gochro gochro
