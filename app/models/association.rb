class Association < ActiveRecord::Base
		validates :name, presence: true
		validates :presentation, presence: true
		validates :adress, presence: true
		validates :email, presnce: true
		validates :needs, presence: true
end
		
