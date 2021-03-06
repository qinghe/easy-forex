source 'https://rubygems.org'

ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Front end setup
gem 'bootstrap-sass', '~> 3.3.1'
gem 'font-awesome-sass', '~> 4.2.0'
gem 'simple_form'
gem "autoprefixer-rails"

gem 'slim'

# Current actions
gem 'sidekiq', '~> 4.0.1'
gem 'sidekiq-scheduler', '~> 2.0.0'
gem 'sinatra'  # Dependency of sidekiq
gem 'sidekiq-failures'
gem 'redis-namespace',      '~> 1.5.2'

# Obtenir rate
gem 'yahoo-finance', '~> 1.0.0'

# For user authentication
gem 'devise'

# Facebook Connect
gem 'omniauth-facebook'

# Use figaro to manage environment variables
gem 'figaro'

# For pictures upload to Amazon S3
gem 'aws-sdk', '< 2.0'
gem 'paperclip'

# Rails engine for static pages
gem 'high_voltage', '~> 2.4.0'

# Enumerated attributes with I18n
gem 'enumerize'

# AUTHORIZATION
gem "pundit"

gem "geocoder"

# Prepare for Heroku
group :production do
  gem 'rails_12factor'
  gem 'puma'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  gem 'better_errors'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
