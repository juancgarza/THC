class VehicleForm
  include ActiveModel::Model
  
  attr_accessor :manufacturer, :model, :price, :color, :quantity, :dealership, :year,
                :ownership_status
  attr_reader :vehicle

  def save
    if valid?
      process!
      true
    else
      false
    end
  end

  private

  def process!
    find_or_create_vehicle
    create_item
  end

  def find_or_create_vehicle
    @vehicle ||= Vehicle.find_or_create_by!(model: model, color: color, year: year, ownership_status: ownership_status) do |v|
      v.model = model
      v.manufacturer = manufacturer
      v.price = price
      v.color = color
      v.year = year
      v.ownership_status = ownership_status
    end
  end

  def create_item
    Item.create!(vehicle: vehicle, dealership: dealership, quantity: quantity)
  end
end