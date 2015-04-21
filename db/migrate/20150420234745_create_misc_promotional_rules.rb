class CreateMiscPromotionalRules < ActiveRecord::Migration
  def change
    create_table :misc_promotional_rules do |t|
      t.string :name
      t.decimal :discount_percentage
      t.decimal :discount_price

      t.timestamps null: false
    end
  end
end
