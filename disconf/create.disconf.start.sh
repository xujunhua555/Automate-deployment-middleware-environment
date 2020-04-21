#!/usr/bin/env bash
docker pull registry.cn-hangzhou.aliyuncs.com/xujunhua/disconf:1.0
docker run -d -p 8080:8080 --name dev-xjh-disconf registry.cn-hangzhou.aliyuncs.com/xujunhua/disconf:1.0