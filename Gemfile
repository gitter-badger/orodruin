source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0.rc1'

# Use Mongoid, as we shouldn't have complex relations
gem 'mongoid', '~> 4.0.0.beta1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring', group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# User management
gem 'devise', '~> 3.2.3'
gem 'cancan', '~> 1.6.10'
gem 'rolify', '~> 3.4.0'

# Simplify controllers by decent_exposure
gem 'decent_exposure'

# Nicer views template engine
gem 'slim-rails'

# From helpers
gem 'simple_form', '~> 3.0.1'

# Lightweight markup language for blog posts (Markdown in this case)
gem 'redcarpet', '~> 3.1.1'

group :doc do
  gem 'yard', require: false
  gem 'yard-tomdoc', require: false
end

group :development do
  # Better console
  gem 'jazz_hands'

  # Style checking
  gem 'rubocop'

  # Detect N+1 queries
  gem 'bullet'

  # Detect security vulnerabilities
  gem 'brakeman', require: false

  # Preview application flow in Chrome
  gem 'meta_request'
end

# Fixtures replacement
gem 'fabrication', group: [:development, :test]

group :test do
  # Use MiniTest::Spec instead of MiniTest::Unit
  gem 'minitest-spec-rails'
  gem 'minitest-extra-matchers'
  # Nicer mocking library
  gem 'rr', require: false

  # Coverage reports
  gem 'simplecov', require: false
end
