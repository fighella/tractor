require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

source 'https://rubygems.org'
ruby '1.9.2'
gem 'rails', '3.2.7'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'uglifier', '>= 1.0.3'

  gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
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
gem 'heroku'
gem 'pg'
gem "mocha", :group => :test

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

gem 'tractor', '0.0.2', :path => 'vendor/tractor'
gem 'rb-fsevent', '~> 0.9.1'
