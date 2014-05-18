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

DatabaseCleaner.strategy = :transaction

class MiniTest::Spec
  include Minitest::Extra::Matchers::Subject
  include Minitest::Extra::Matchers::Received
  include Minitest::Extra::Matchers::Pending

  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end
end
