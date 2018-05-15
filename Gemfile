source ENV['GEM_SOURCE'] || 'https://rubygems.org'
case RUBY_PLATFORM
when /darwin/
  gem 'CFPropertyList'
end
gem 'puppet', '5.3.5'
gem 'facter', '2.4.6'

# Workaround for PDOC-160
gem 'puppet-strings', :git => 'https://github.com/puppetlabs/puppet-strings'
gem 'pdqtest', '1.1.0'
gem 'puppetclassify', '0.1.5'
