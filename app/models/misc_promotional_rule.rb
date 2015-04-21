class MiscPromotionalRule < ActiveRecord::Base
	validates :name, uniqueness: true
	validates :discount_price, numericality: true
end
