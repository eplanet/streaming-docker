[ ! -f /opt/zookeeper/conf/zoo.cfg ] && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg
/opt/zookeeper/bin/zkServer.sh status
if [ $? -eq 1 ]
then
    /opt/zookeeper/bin/zkServer.sh start
    sleep 2
fi

/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties
