class Product < ActiveRecord::Base
	SIZES = [5.5, 6.0, 6.5, 7.0, 7.5, 8.0]

	#validates :size, :inclusion => [5.5, 6.0, 6.5, 7.0, 7.5, 8.0]

	validates :name, :description, :price, :stock_quantity, presence: true
end
