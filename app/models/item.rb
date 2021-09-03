class Item < ApplicationRecord
  belongs_to :vehicle
  belongs_to :dealership
end
