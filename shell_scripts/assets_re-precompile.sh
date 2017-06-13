#!/bin/sh
eval 'rake assets:clobber'
eval 'rake assets:precompile RAILS_ENV=production'
. 'production_server.sh'
