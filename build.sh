#! /bin/bash
set -e

# wget --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz
if [ $(docker images | grep alpine | grep jre | awk '{print $3}') ]; then
    docker rmi -f $(docker images | grep alpine | grep jre | awk '{print $3}')
fi
tar zxf apks/jre7.tar.gz -C apks && \
docker build -t alpine:jre7 . && \
rm -rf apks/jre
