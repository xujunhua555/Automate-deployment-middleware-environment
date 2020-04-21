#!/usr/bin/env bash
docker pull registry.cn-hangzhou.aliyuncs.com/xujunhua/redis:3.2.11
docker run -d --name dev-xjh-redis -p 6379:6379 registry.cn-hangzhou.aliyuncs.com/xujunhua/redis:3.2.11 --requirepass "Ia3dfbLqxacH"