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
require 'minitest/extra/matchers'

class MiniTest::Spec
  include Minitest::Extra::Matchers::Subject
  include Minitest::Extra::Matchers::Received
end
