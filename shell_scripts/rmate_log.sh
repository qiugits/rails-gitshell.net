#!/bin/sh

# nginx
# access log
rmate -f /usr/local/var/log/nginx/gitshell.net_access.log
# error log
rmate -f /usr/local/var/log/nginx/gitshell.net_error.log

# unicorn
# access log
rmate -f /Users/qiu/workspace/gitshell.net/log/unicorn.log
# error log
rmate -f /Users/qiu/workspace/gitshell.net/log/unicorn_error.log
