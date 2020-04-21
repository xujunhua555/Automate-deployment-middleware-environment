#!/usr/bin/env bash

# 脚本出错时终止执行
set -e

DIR=$(cd $(dirname $0); pwd)

echo "八维通中间件   一键快速部署begin"
echo " "
echo " "
echo " "
echo " "
echo "mysql       开始部署"
echo " "
. ${DIR}/mysql/create.mysql.start.sh

echo "mysql       部署完成"

echo "redis         开始部署"
echo " "
sleep 3s


. ${DIR}/redis/create.redis.start.sh

echo "redis         部署完成"

echo "rmqserver         开始部署"
echo " "
sleep 3s

. ${DIR}/rmqserver/create.rmqserver.start.sh

echo "rmqserver         部署完成"

echo "rmqserver         开始部署"
echo " "
sleep 3s

. ${DIR}/rmqbroker/create.rmqbroker.start.sh

echo "rmqbroker         部署完成"

echo "nacos         开始部署"
echo " "
sleep 3s

. ${DIR}/nacos/create.nacos.start.sh

echo "nacos         部署完成"

echo "nginx         开始部署"
echo " "
sleep 3s

. ${DIR}/nginx/create.nginx.start.sh

echo "nginx         部署完成"

echo "disconf         开始部署"
echo " "
sleep 3s

. ${DIR}/disconf/create.disconf.start.sh

echo "disconf         部署完成"



echo " "
echo " "
echo "八维通中间件   一键快速部署end"
echo " "
echo " "
echo "部署完成"
echo "部署完成"
echo "部署完成"
echo "部署完成"
echo "部署完成"
