#!/bin/bash

case $(puppet --version) in
  3*)
    install_dir="$HOME/.puppet/var/puppet-module/"
    ;;
  4*)
    install_dir="$HOME/.puppetlabs/opt/puppet/cache/puppet-module/"
    ;;
esac

find skeleton -type f | git checkout-index --stdin --force --prefix=$install_dir
