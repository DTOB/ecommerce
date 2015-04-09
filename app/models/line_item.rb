class LineItem < ActiveRecord::Base
	validates :quantity, :price, :product_id, :order_id, presence: true
end
