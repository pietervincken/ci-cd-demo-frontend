#!/bin/bash

docker build -t testimage .
docker run -d --name local-test -p 4200:4200 testimage
docker ps

open http://localhost:4200

docker logs -f local-test

docker rm -f local-test