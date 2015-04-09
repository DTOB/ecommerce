class Product < ActiveRecord::Base
	validates :name, :description, :price, :size, :stock_quantity, presence: true
end
