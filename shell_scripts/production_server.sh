#!/bin/sh
echo "////////////////////////////////////////"
echo " * restart unicorn.rb"
echo "  - stop unicorn"
kill -QUIT `cat ~/workspace/qiu.jp/tmp/pids/unicorn.pid`
echo "  - start unicorn as daemon"
echo "   *__production__*"
unicorn_rails -c ~/workspace/qiu.jp/config/unicorn.rb -E production -D
echo "////////////////////////////////////////"

echo "////////////////////////////////////////"
echo " * restart nginx"
echo "  - stop"
nginx -s stop
echo "  - start"
nginx
echo "////////////////////////////////////////"
