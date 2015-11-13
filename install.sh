#!/bin/bash
if [ $(puppet --version |sed -e 's/\..*$//' ) -gt 3 ]; then
  find skeleton -type f -not -name .gitkeep | git checkout-index --stdin --force --prefix="$HOME/.puppetlabs/opt/puppet/cache/puppet-module/" --
else
  find skeleton -type f -not -name .gitkeep | git checkout-index --stdin --force --prefix="$HOME/.puppet/var/puppet-module/" --
fi
