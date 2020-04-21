#!/usr/bin/env bash
docker pull registry.cn-hangzhou.aliyuncs.com/xujunhua/openresty:1.13.6.2
docker run -d -p 80:80 -p 8081:8081 -v /root/nginx.conf:/etc/nginx/conf.d/nginx.conf -v /usr/local/disconf/war/html:/usr/local/disconf/war/html --name dev-xjh-openresty registry.cn-hangzhou.aliyuncs.com/xujunhua/openresty:1.13.6.2