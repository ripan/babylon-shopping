class Product < ActiveRecord::Base
  validates :code, uniqueness: true
  has_many :carts_products
  has_many :carts, through: :carts_products
end
