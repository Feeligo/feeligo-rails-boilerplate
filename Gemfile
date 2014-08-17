source 'https://rubygems.org'
ruby '2.1.2'

# Rails
gem 'rails', '4.1.0'

# Postgres
gem 'pg', '>= 0.17.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Heroku 12 factor
gem 'rails_12factor', group: :production

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Haml templates
gem 'haml-rails'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Devise - authentication based on Warden
gem 'devise', "~> 3.3.0"

# Bootstrap - mobile first front-end framework
gem 'bootstrap-sass', '~> 3.2.0'

# Rack contrib for Rack::JSONP
gem 'rack-contrib'

# NewRelic
gem 'newrelic_rpm'

# Draper decorators
gem 'draper'

# Sidekiq for background workers
gem 'sidekiq'

# caching
gem 'memcachier'
gem 'dalli'

# allows to test `after_commit` callbacks with transactional fixtures
gem 'test_after_commit', group: :test # never in :development !

# Use debugger
# gem 'debugger', group: [:development, :test]

# RSpec tests
group :development, :test do
  gem 'rspec-rails', '~> 3.0.2'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end