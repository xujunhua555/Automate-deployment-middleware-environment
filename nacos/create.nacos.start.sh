#!/usr/bin/env bash
DIR=$(cd $(dirname $0); pwd)
docker exec -it dev-xjh-mysql /bin/bash
# 导入数据库SQL
mysql -h127.0.0.1 -uroot -pA59eOBTpvVEo mysql < ${DIR}/nacos/sql/nacos_mysql.sql
exit
echo -e "\nnacos-mysql.sql 数据导入成功 \n\n\n"
docker pull registry.cn-hangzhou.aliyuncs.com/xujunhua/nacos:nacos-server:1.1.4
docker run -d -e JVM_XMS=128m -e JVM_XMX=256m -e MODE=standalone -e SPRING_DATASOURCE_PLATFORM=mysql -e MYSQL_MASTER_SERVICE_HOST=10.10.2.5 -e MYSQL_MASTER_SERVICE_PORT=3306 -e MYSQL_MASTER_SERVICE_USER=root -e MYSQL_MASTER_SERVICE_PASSWORD=A59eOBTpvVEo -e MYSQL_MASTER_SERVICE_DB_NAME=nacos -e MYSQL_DATABASE_NUM=1 -p 8848:8848 --restart=always --name dev-xjh-nacos registry.cn-hangzhou.aliyuncs.com/xujunhua/nacos-server:1.1.4