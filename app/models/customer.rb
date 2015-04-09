class Customer < ActiveRecord::Base
	has_many :orders
	belongs_to :province, class_name: "Customer"

	validates :first_name, :last_name, :email, :province_id, presence: true
	
end
