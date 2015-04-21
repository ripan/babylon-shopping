class CreatePromotionalRules < ActiveRecord::Migration
  def change
    create_table :promotional_rules do |t|
      t.integer :product_id
      t.integer :quantity
      t.decimal :discount_percentage
      t.decimal :discount_price

      t.timestamps null: false
    end
  end
end
