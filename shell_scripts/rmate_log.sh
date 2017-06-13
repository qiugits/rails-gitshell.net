#!/bin/sh
echo "////////////////////////////////////////"
echo "rmate nginx gitshell.net_access.log"
rmate -f /usr/local/var/log/nginx/gitshell.net_access.log
echo "rmate nginx gitshell.net_access.log"
rmate -f /usr/local/var/log/nginx/gitshell.net_error.log
echo "rmate unicorn gitshell.net access log"
rmate -f /Users/qiu/workspace/gitshell.net/log/unicorn.log
echo "rmate unicorn gitshell.net error log"
rmate -f /Users/qiu/workspace/gitshell.net/log/unicorn_error.log
echo "////////////////////////////////////////"
