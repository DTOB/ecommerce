class Order < ActiveRecord::Base
	belongs_to :customer, class_name: "Order"
	has_many :products
	has_many :line_items
	validates :status, :customer_id, presence: true
end
