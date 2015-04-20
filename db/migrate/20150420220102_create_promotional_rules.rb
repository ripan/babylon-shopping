class CreatePromotionalRules < ActiveRecord::Migration
  def change
    create_table :promotional_rules do |t|
      t.string :product_id
      t.string :quantity
      t.string :discount_percentage
      t.string :discount_price

      t.timestamps null: false
    end
  end
end
