ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)
# require "action_cable/testing/rspec"
# require "action_cable/testing/rspec/features"
require "bcrypt"
require "rspec/rails"
require "rails_helper"

Dir[Rails.root.join("spec/support/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.include SpecTestHelper
end
