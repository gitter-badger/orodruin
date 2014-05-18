Konacha.configure do |config|
  require 'capybara/poltergeist'
  config.driver   = :poltergeist
  config.spec_dir = 'test/javascripts'
end if defined?(Konacha)
