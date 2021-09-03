class Item < ApplicationRecord
  belongs_to :vehicle
  belongs_to :dealership

  delegate :model, :manufacturer, :price, :color, to: :vehicle
end
