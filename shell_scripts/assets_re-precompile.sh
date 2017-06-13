#!/bin/sh
eval 'rake assets:clobber'
eval 'rake db:migrate RAILS_ENV=production'
eval 'rake assets:precompile RAILS_ENV=production'
. 'shell_scripts/production_server.sh'
