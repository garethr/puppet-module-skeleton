#!/bin/bash -x -e
cd user-module
bundle install
bundle exec rake test
