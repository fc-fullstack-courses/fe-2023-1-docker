#!/bin/bash

sudo docker build -t mock-server:0.0.2 -f Dockerfile-dev .

sudo docker run -dit --name server -p 9999:5000 -v $(pwd):/server:ro mock-server:0.0.2