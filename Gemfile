source 'http://rubygems.org'

gem 'rails', '3.0.9'

# fix rake version for DSL problem
gem 'rake', '0.8.7'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

gem 'activeadmin'

# design
gem 'compass'
gem 'haml-rails'
gem 'jquery-rails'
gem 'cocoon'
gem 'formtastic'

# authentication & authorization
gem 'devise'
gem 'cancan'

# AR Behaviours
# gem 'nested_set'
gem 'kaminari'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'webrat'
  gem 'capybara'
  gem 'annotate'
  gem 'rspec-rails'
end

group :production do
  # heroku's cache
  gem 'dalli'
end
