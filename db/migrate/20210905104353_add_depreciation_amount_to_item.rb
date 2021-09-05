class AddDepreciationAmountToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :depreciation_amount, :decimal, default: 0.0
  end
end
