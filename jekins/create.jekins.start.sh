#!/usr/bin/env bash
docker pull registry.cn-hangzhou.aliyuncs.com/xujunhua/jekins:1.0
mkdir -p /data/jenkins/
chown -R 1000:1000 /data/jenkins/
docker run -d -p 8089:8080 -p 50000:50000 --name jenkins --privileged=true  -v /data/jenkins:/var/jenkins_home jenkins