class LineItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :product, class_name: "LineItem"

	validates :quantity, :price, :product_id, :order_id, presence: true
end
