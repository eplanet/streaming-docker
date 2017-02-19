streaming-docker
================
This Dockerfile aims at being ready to use streaming, for *testing* purposes.

It decompresses [Zookeeper](https://zookeeper.apache.org/doc/trunk/) and [Kafka](https://kafka.apache.org/documentation/) in `/opt`, and starts it right away by overriding `/root/.bashrc` in Docker container. It exposes ports 2181 (Zookeeper) and 9092 (Kafka) on localhost.

# Usage
Simply run:
```bash
./start_docker.sh
```

