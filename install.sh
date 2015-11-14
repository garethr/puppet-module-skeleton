#!/bin/bash

case $(puppet --version) in
  3*)
    install_dir="$HOME/.puppet/var/puppet-module/"
    ;;
  4*)
    install_dir="$HOME/.puppetlabs/opt/puppet/cache/puppet-module/"
    ;;
esac

find skeleton -type f -not -name .gitkeep | git checkout-index --stdin --force --prefix=$install_dir

