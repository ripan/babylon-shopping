class Product < ActiveRecord::Base
	validates :code, uniqueness: true
end
