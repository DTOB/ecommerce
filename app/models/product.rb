class Product < ActiveRecord::Base
	has_many :orders
	has_many :line_items
	validates :name, :description, :price, :stock_quantity, presence: true

	
	SIZES = [5.5, 6.0, 6.5, 7.0, 7.5, 8.0]

	#validates :size, :inclusion => [5.5, 6.0, 6.5, 7.0, 7.5, 8.0]

	


end
