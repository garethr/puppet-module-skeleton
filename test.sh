#!/bin/bash -xv
cd user-module
export BUNDLE_GEMFILE=./Gemfile
bundle install
bundle exec rake test
