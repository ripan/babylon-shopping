class PromotionalRule < ActiveRecord::Base
	belongs_to :product
	validates :discount_price, numericality: true
end
