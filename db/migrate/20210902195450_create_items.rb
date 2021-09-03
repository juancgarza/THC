class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.belongs_to :vehicle, null: false, foreign_key: true
      t.belongs_to :dealership, null: false, foreign_key: true
      t.integer :quantity
      
      t.timestamps
    end
  end
end
