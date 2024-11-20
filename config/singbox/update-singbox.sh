#!/bin/sh
curl -L "http://192.168.31.101:5000/config/订阅&file=https://raw.githubusercontent.com/hao4090/rule/refs/heads/master/config/singbox/config.json" -o /etc/sing-box/config.json
killall sing-box || echo "No sing-box process found."
sleep 3
sing-box run -c /etc/sing-box/config.json &
