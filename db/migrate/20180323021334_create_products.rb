class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :product_price
      t.integer :quantity
      t.string :image
      t.text :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
