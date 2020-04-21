#!/usr/bin/env bash
DIR=$(cd $(dirname $0); pwd)
docker pull registry.cn-hangzhou.aliyuncs.com/xujunhua/openresty:1.13.6.2
docker run -d -p 80:80 -p 8081:8081 -v /${DIR}/conf/disconf/disconf-nginx.conf:/etc/nginx/conf.d/disconf-nginx.conf -v /${DIR}/conf/disconf/html:/usr/local/disconf/war/html --name dev-xjh-openresty registry.cn-hangzhou.aliyuncs.com/xujunhua/openresty:1.13.6.2
