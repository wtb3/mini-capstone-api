class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.text :description
      t.string :image_url
      t.references :supplier, foreign_key: true
      t.timestamps
    end
  end
end
