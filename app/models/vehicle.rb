class Vehicle < ApplicationRecord
  has_many :items
  has_many :dealerships, through: :items
end
