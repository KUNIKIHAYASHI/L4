#!/usr/bin/env bash
#exit on erro rset -o errexit
bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate