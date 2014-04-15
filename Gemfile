source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'

gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

gem 'bourbon'
gem 'neat'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# API builder
gem 'grape', '~> 0.7.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Use jquery as the JavaScript library
# gem 'jquery-rails'
# Turbolinks makes following links in your web application faster.
# Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Spring speeds up development by keeping your application running in the
# background. Read more: https://github.com/rails/spring
gem 'spring', group: :development

# Use unicorn as the app server
# gem 'unicorn'
gem 'puma'

# User management
gem 'devise', '~> 3.2.3'
gem 'cancancan', '~> 1.7.0'
gem 'rolify', '~> 3.4.0'

# OAuth sign up
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'

# Simplify controllers by decent_exposure
gem 'decent_exposure'

# Simplify views using decorators
gem 'draper', '~> 1.3.0'

# Nicer views template engine
gem 'slim-rails'

# From helpers
gem 'simple_form', '~> 3.0.1'

# Lightweight markup language for blog posts (Markdown in this case)
gem 'redcarpet', '~> 3.1.1'

# Allow social translations
gem 'localeapp'

group :doc do
  gem 'yard', require: false
  gem 'yard-tomdoc', require: false
end

group :development do
  # Easily manage runnables
  gem 'foreman'

  # Better console
  gem 'pry-rails'

  # Stylesheets documentation
  gem 'kss-rails'

  # Style checking
  gem 'rubocop'

  # Detect N+1 queries
  gem 'bullet'

  # Detect security vulnerabilities
  gem 'brakeman', require: false

  # Preview application flow in Chrome
  gem 'meta_request'

  # STFU
  gem 'quiet_assets'
end

# Fixtures replacement
gem 'fabrication',  group: [:development,  :test]
gem 'ffaker',       group: [:development,  :test]

group :test do
  # Use MiniTest::Spec instead of MiniTest::Unit
  # gem 'minitest-spec-rails'
  gem 'minitest-extra-matchers'
  # Nicer mocking library
  gem 'rr', require: false

  # Coverage reports
  gem 'coveralls', require: false
end
