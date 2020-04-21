#!/usr/bin/env bash
docker pull registry.cn-hangzhou.aliyuncs.com/xujunhua/rocketmq:server-4.5.1
mkdir -p /data/rocketmq/dev-xjh/namesrv/logs
mkdir -p /data/rocketmq/dev-xjh/namesrv/store
chmod 777 /data/rocketmq/dev-xjh/namesrv/logs
chmod 777 /data/rocketmq/dev-xjh/namesrv/store
docker run -d -p 9876:9876 -v /data/rocketmq/dev-xjh/namesrv/logs:/opt/logs -v /data/rocketmq/dev-xjh/namesrv/store:/opt/store --name dev-xjh-rmqserver registry.cn-hangzhou.aliyuncs.com/xujunhua/rocketmq:server-4.5.1