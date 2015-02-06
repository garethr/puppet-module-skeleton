#!/bin/bash -xv
cd user-module
pwd
cat Gemfile
bundle install
bundle exec rake test
