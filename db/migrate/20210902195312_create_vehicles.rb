class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :manufacturer
      t.string :model
      t.string :color
      t.decimal :price

      t.timestamps
    end
  end
end
