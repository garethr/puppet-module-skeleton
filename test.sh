#!/bin/bash -xv
cd user-module
pwd
cat Gemfile
bundle install --gemfile=./Gemfile --path ../vendor
bundle exec rake test
