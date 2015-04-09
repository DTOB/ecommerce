class Order < ActiveRecord::Base
	validates :status, :customer_id, presence: true
end
