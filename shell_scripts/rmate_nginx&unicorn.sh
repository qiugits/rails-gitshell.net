#!/bin/sh
echo "open nginx"
rmate ~/workspace/qiu.jp/config/unicorn.rb
echo "open unicorn"
rmate /usr/local/etc/nginx/nginx.conf
