#!/bin/sh
echo "////////////////////////////////////////"
echo " * restart unicorn.rb"
echo "  - stop unicorn"
kill -QUIT `cat ~/workspace/gitshell.net/tmp/pids/unicorn.pid`
echo "  - start unicorn as daemon"
echo "   *__production__*"
unicorn_rails -c ~/workspace/gitshell.net/config/unicorn.rb -E production -D
echo "////////////////////////////////////////"

echo "////////////////////////////////////////"
echo " * restart nginx"
echo "  - stop"
nginx -s stop
echo "  - start"
nginx
echo "////////////////////////////////////////"
