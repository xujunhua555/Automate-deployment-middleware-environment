#!/usr/bin/env bash
DIR=$(cd $(dirname $0); pwd)
docker pull registry.cn-hangzhou.aliyuncs.com/xujunhua/mysql:5.7
if [ ! -d "/data" ]
then
echo "目录不存在,开始创建目录"
mkdir /data
else
echo ""
fi
if [ ! -d "/data/mysql" ]
then
echo "/data/mysql目录不存在,开始创建目录"
mkdir /data/mysql
else
echo ""
fi
if [ ! -d "/data/mysql/dev-xjh" ]
then
echo "/data/mysql/dev-xjh目录不存在,开始创建目录"
mkdir /data/mysql/dev-xjh
else
echo ""
fi
if [ ! -d "/data/mysql/dev-xjh/logs" ]
then
echo "/data/mysql/dev-xjh/logs目录不存在,开始创建目录"
mkdir /data/mysql/dev-xjh/logs
else
echo ""
fi
if [ ! -d "/data/mysql/dev-xjh/data" ]
then
echo "/data/mysql/dev-xjh/data目录不存在,开始创建目录"
mkdir /data/mysql/dev-xjh/data
else
echo ""
fi
chmod -R 777 /data/mysql/dev-xjh/logs
chmod -R 777 /data/mysql/dev-xjh/data
docker run --name dev-xjh-mysql -p 3306:3306 -v /data/mysql/dev-xjh/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=A59eOBTpvVEo -d registry.cn-hangzhou.aliyuncs.com/xujunhua/mysql:5.7-rc
