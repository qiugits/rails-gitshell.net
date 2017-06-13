#!/bin/sh
eval 'rake assets:clobber'
eval 'rake assets:precompile RAILS_ENV=production'
. 'shell_scripts/production_server.sh'
