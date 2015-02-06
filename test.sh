#!/bin/bash -xv
cd user-module
bundle install
bundle exec rake test
