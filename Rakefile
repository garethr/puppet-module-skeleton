desc "Install the skeleton in ~/.puppet/var/puppet-module/skeleton"
task :install do
  home = ENV['HOME']
  system "find skeleton -type f | git checkout-index --stdin --force --prefix=#{home}/.puppet/var/puppet-module/ --"
end

task :default do
  puts "This package includes a README.markdown"
  puts "TLDR; rake install"
  true
end
