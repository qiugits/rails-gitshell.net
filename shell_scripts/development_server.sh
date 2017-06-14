#!/bin/sh
#cd /Users/qiushi/workspace/gitshell.net
pwd
echo "////////////////////////////////////////"
echo " * restart unicorn.rb"
echo "  - stop unicorn"
kill -QUIT `cat ~/workspace/gitshell.net/tmp/pids/unicorn.pid`
echo "  - start unicorn as daemon"
echo "   *__development__*"
bundle exec unicorn_rails -c ~/workspace/gitshell.net/config/unicorn_development.rb -E development -D
echo ' * open in safari'
open -a Safari 'http://localhost:3000'
echo "DONE"
echo "////////////////////////////////////////"
