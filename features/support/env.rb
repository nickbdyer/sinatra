# Generated by cucumber-sinatra. (2014-11-11 09:12:01 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/router.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = MyApp

class MyAppWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  MyAppWorld.new
end
