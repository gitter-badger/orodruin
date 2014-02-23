ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/spec'

# Nicer output
require 'minitest/pride'

# Coverage reports
require 'simplecov'

# RR mocking library
require 'rr'

# Extra matchers
require 'minitest/extra/matchers/subject'

class ActiveSupport::TestCase
  include Minitest::Extra::Matchers::Subject
end
