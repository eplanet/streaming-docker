FROM webskin/docker-debian-java-8-oracle:latest

RUN apt-get update
RUN apt-get install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN mkdir -p /opt
# Installing Zookeeper
COPY zookeeper-3.4.9.tar.gz /opt
RUN cd /opt && tar zxf zookeeper-3.4.9.tar.gz
RUN ln -s /opt/zookeeper-3.4.9 /opt/zookeeper
# Installing Kafka
COPY kafka_2.11-0.10.1.1.tgz /opt
RUN cd /opt && tar zxf kafka_2.11-0.10.1.1.tgz
RUN ln -s /opt/kafka_2.11-0.10.1.1 /opt/kafka
COPY bashrc /root/.bashrc
