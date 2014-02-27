class Association < ActiveRecord::Base
		validates :name, presence: true
		validates :presentation, presence: true
		validates :address, presence: true
		validates :email, presence: true
		validates :needs, presence: true
end
		
