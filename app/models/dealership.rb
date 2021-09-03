class Dealership < ApplicationRecord
  has_many :items
  has_many :vehicles, through: :items
end
