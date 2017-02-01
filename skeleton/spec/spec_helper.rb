require 'puppetlabs_spec_helper/module_spec_helper'
require 'rspec-puppet-facts'

include RspecPuppetFacts

require 'simplecov'
unless RUBY_VERSION =~ %r{^1.9}
  require 'coveralls'
  Coveralls.wear!
end

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
  add_filter '/spec'
  add_filter '/vendor'
end

RSpec.configure do |c|
  c.hiera_config = File.expand_path(File.join(__FILE__, '../fixtures/hiera.yaml'))
end
