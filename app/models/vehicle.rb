class Vehicle < ApplicationRecord
  enum ownership_status: {
    new_vehicle: 0,
    used_vehicle: 1
  }
  
  has_many :items
  has_many :dealerships, through: :items

  accepts_nested_attributes_for :items
end
