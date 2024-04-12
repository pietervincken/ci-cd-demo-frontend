#!/bin/bash

docker build -t testimage .
docker tag testimage pietervincken/ci-cd-demo-frontend:latest
docker push pietervincken/ci-cd-demo-frontend:latest