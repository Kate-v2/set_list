
require 'bundler'

Bundle.require(:default, :test)
# require default gems from Gemfile and then extra gems when you run tests
# which you can see in the Gemfile
require File.expand_path('../../config/environment.rb', __FILE__)
# Treat this path as a file
