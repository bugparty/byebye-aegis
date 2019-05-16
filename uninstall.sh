#!/bin/bash
red='\e[91m'
green='\e[92m'
yellow='\e[93m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'

echo -e "$green downloading official uninstall script $none"

curl -sSL http://update.aegis.aliyun.com/download/quartz_uninstall.sh | sudo bash

sudo rm -rf /usr/local/aegis

sudo rm /usr/sbin/aliyun-service

sudo rm /lib/systemd/system/aliyun.service

echo -e "$green uninstall succeed! $none"
