#coding: utf-8
require 'simplecov'
SimpleCov.start 'rails'
require 'rubygems'
require 'spork'
require 'factory_girl_rails'

Spork.prefork do
end

Spork.each_run do

end


# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
  config.include FactoryGirl::Syntax::Methods
  ## FactoryGirlはcreate(:user)のような省略記法も可能で、上をincludeすることで
  #Rspec全体で省略記法が可能になる
end
