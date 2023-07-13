class AddInventoryToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :inventory, :integer, default: 0
  end
end
