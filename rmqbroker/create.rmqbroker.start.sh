#!/usr/bin/env bash
docker pull registry.cn-hangzhou.aliyuncs.com/xujunhua/rocketmq:server-4.5.1
mkdir -p /data/rocketmq/dev-xjh/broker/logs
mkdir -p /data/rocketmq/dev-xjh/broker/store
chmod 777 /data/rocketmq/dev-xjh/broker/logs
chmod 777 /data/rocketmq/dev-xjh/broker/store
docker run -d -p 10911:10911 -v /data/rocketmq/dev-xjh/broker/logs:/opt/logs -v /data/rocketmq/dev-xjh/broker/store:/opt/store -p 10909:10909 --name dev-xjh-rmqbroker --link dev-xjh-rmqserver:namesrv -e "NAMESRV_ADDR=10.10.2.5:9876" -e "JAVA_OPTS=-Duser.home=/opt" -e "JAVA_OPT_EXT=-server -Xms128m -Xmx256m" registry.cn-hangzhou.aliyuncs.com/xujunhua/rocketmq:broker-4.5.1