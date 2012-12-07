require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

source 'https://rubygems.org'

gem 'rails', '3.2.7'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

group :development do
  gem "guard-livereload"
  gem "pry"
  gem "yajl-ruby"
  gem "rack-livereload"
  gem "guard-bundler"
  gem "nokogiri"
  gem "nifty-generators"
  gem 'sqlite3'
end

gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'

gem "simple_form"
gem "nested_form"

gem "devise"
gem 'carrierwave'
gem 'fog'
gem 'rmagick'
# gem 'memcached'
gem 'dalli'
gem 'friendly_id'
gem 'foreman'
gem 'RedCloth'
gem 'draper'
#gem 'heroku'
gem 'pg'
gem "mocha", :group => :test

# Gem for talking to the Google Analytics API 
# gem 'gattica', '>=0.3.3.4', :git => 'git://github.com/chrisle/gattica.git'


# Homemade gems
#gem 'sigs', :path => 'lib/gems/sigs'   
#gem 'socializer', :path => 'lib/gems/socializer'

# authorization
gem 'cancan'

# posting to twitterosa
gem 'twitter'

# pagination
gem 'kaminari'

# omni auth
gem 'omniauth'
gem 'omniauth-linkedin'

#linkedin API wrapper
gem 'linkedin'
gem 'whenever', :require => false

gem 'mailman'
gem 'delayed_job_active_record'
gem 'daemons'

gem 'liquid'

gem 'tractor', :path => 'lib/gems/tractor-gem'
#gem 'sigs', :path => 'lib/gems/sigs'

gem 'rb-fsevent', '~> 0.9.1'
