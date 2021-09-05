class AddMissingAttributesToVehicle < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :ownership_status, :integer
    add_column :vehicles, :year, :string
  end
end
