ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# Coverage reports
require 'simplecov'

# RR mocking library
require 'rr'

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end
