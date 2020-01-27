class CreateProductIds < ActiveRecord::Migration[6.0]
  def change
    create_table :product_ids do |t|
      t.string :product
      t.string :quantity
      t.string :price

      t.timestamps
    end
  end
end
