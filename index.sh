#!/bin/bash

rm -rf centos7-shell
mkdir -p /data/www/

yum update -y
yum install git -y
git clone https://github.com/dannetrichard/init.git
chmod +x ./centos7-shell/*.sh

./centos7-shell/lemp.sh