#!/bin/bash

docker pull debian:latest
docker build -t kafka .
docker run -w /opt/kafka -p 9092:9092 -p 2181:2181 -it kafka bash
