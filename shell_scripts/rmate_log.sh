#!/bin/sh
echo "////////////////////////////////////////"
echo "rmate nginx qiu.jp_access.log"
rmate -f /usr/local/var/log/nginx/qiu.jp_access.log
echo "rmate nginx qiu.jp_access.log"
rmate -f /usr/local/var/log/nginx/qiu.jp_error.log
echo "rmate unicorn qiu.jp access log"
rmate -f /Users/qiu/workspace/qiu.jp/log/unicorn.log
echo "rmate unicorn qiu.jp error log"
rmate -f /Users/qiu/workspace/qiu.jp/log/unicorn_error.log
echo "////////////////////////////////////////"
