class CreateCartsProducts < ActiveRecord::Migration
  def change
    create_table :carts_products do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
