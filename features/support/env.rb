# Generated by cucumber-sinatra. (2014-03-21 11:53:58 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/client.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = .

class .World
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  .World.new
end
