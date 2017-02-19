#!/bin/bash

wget -nc http://apache.mediamirrors.org/kafka/0.10.1.1/kafka_2.11-0.10.1.1.tgz
wget -nc http://apache.crihan.fr/dist/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz
docker pull debian:latest
docker build -t kafka .
docker run -w /opt/kafka -p 9092:9092 -p 2181:2181 -it kafka bash
