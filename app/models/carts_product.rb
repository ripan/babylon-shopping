class CartsProduct < ActiveRecord::Base
	validates :quantity, numericality: true
	belongs_to :product

	def item_price_by_quantity
		self.quantity * self.product.price
	end
end
