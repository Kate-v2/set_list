# Must be first
ENV['RACK_ENV'] = 'test'

require 'bundler'

Bundler.require(:default, :test)
# require default gems from Gemfile and then extra gems when you run tests
# which you can see in the Gemfile
require File.expand_path('../../config/environment.rb', __FILE__)
# Treat this path as a file


DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
end
