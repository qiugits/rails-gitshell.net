#!/bin/sh
eval 'rake assets:clobber'
eval 'rake assets:precompile RAILS_ENV=production'
. 'shell_script/production_server.sh'
