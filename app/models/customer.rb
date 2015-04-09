class Customer < ActiveRecord::Base
	validates :first_name, :last_name, :email, :province_id, presence: true
		
	
end
