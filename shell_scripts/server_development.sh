#!/bin/sh
cd /Users/qiu/workspace/qiu.jp
pwd
echo "////////////////////////////////////////"
echo " * restart mysql "
mysql.server restart
echo "////////////////////////////////////////"

#echo "x restart apache"
#apachectl restart
echo "////////////////////////////////////////"
echo " * restart unicorn.rb"
echo "  - stop unicorn"
kill -QUIT `cat ~/workspace/qiu.jp/tmp/pids/unicorn.pid`
kill -QUIT `cat ~/workspace/qiu.jp/tmp/unicorn.pid` #どちらの場合も想定して置く
echo "  - start unicorn as daemon"
echo "development"
unicorn_rails -c ~/workspace/qiu.jp/config/unicorn.rb -E development -D
#echo "   *__production__*"
#unicorn_rails -c ~/workspace/qiu.jp/config/unicorn.rb -E production -D
echo "////////////////////////////////////////"

echo "////////////////////////////////////////"
echo " * restart nginx"
echo "  - stop"
nginx -s stop
echo "  - start"
nginx
#echo "  restart nginx  "
#nginx -s reload
echo "////////////////////////////////////////"
