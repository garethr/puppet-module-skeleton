#!/bin/bash

install_dir=$(puppet apply --configprint module_working_dir)/

find skeleton -type f -not -name .gitkeep | git checkout-index --stdin --force --prefix=$install_dir
