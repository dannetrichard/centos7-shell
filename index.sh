#!/bin/bash

rm -rf /root/centos7-shell
mkdir -p /data/www/

yum update -y
yum install unzip -y
yum install git -y
git clone https://github.com/dannetrichard/centos7-shell.git
chmod +x ./centos7-shell/*.sh

./centos7-shell/lemp.sh
sudo certbot --nginx