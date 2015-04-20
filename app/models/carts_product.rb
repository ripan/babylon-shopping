class CartsProduct < ActiveRecord::Base
	validates :quantity, numericality: true
	belongs_to :product
end
