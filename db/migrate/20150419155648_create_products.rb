class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
    add_index :products, :code
    add_index :products, :name
  end
end
