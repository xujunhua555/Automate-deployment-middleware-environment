#!/usr/bin/env bash
docker pull registry.cn-hangzhou.aliyuncs.com/xujunhua/mysql:5.7
mkdir –p /data/mysql/dev-xjh/logs
mkdir -p /data/mysql/dev-xjh/data
chmod -R 777 /data/mysql/dev-xjh/logs
chmod -R 777 /data/mysql/dev-xjh/data
docker run --name dev-xjh-mysql -p 3306:3306 -v /data/mysql/dev-xjh/data:/var/lib/mysql  -e MYSQL_ROOT_PASSWORD=A59eOBTpvVEo -d registry.cn-hangzhou.aliyuncs.com/xujunhua/mysql:5.7