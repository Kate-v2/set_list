# Must be first
ENV['RACK_ENV'] = 'test'

require 'bundler'

require 'simplecov'
SimpleCov.start


Bundler.require(:default, :test)
# require default gems from Gemfile and then extra gems when you run tests
# which you can see in the Gemfile
require File.expand_path('../../config/environment.rb', __FILE__)
# Treat this path as a file

# This needs to be after the environment setup because the app is within the environment
require 'capybara/dsl'
Capybara.app = SetList # The name of our app class
Capybara.save_path = 'tmp/capybara' #sets a save path so we don't clutter our repo

# This runs before/after each test ?
DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
  c.include Capybara::DSL
end
