#!/bin/sh
#cd /Users/qiu/workspace/qiu.jp
pwd
echo "////////////////////////////////////////"
echo " * restart unicorn.rb"
echo "  - stop unicorn"
kill -QUIT `cat ~/workspace/qiu.jp/tmp/pids/unicorn.pid`
echo "  - start unicorn as daemon"
echo "   *__development__*"
bundle exec unicorn_rails -c ~/workspace/gitshell.net/config/unicorn_development.rb -E development -D
echo ' * open in safari'
open -a Safari 'http://localhost:3000'
echo "DONE"
echo "////////////////////////////////////////"
