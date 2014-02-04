class Citizen < ActiveRecord::Base
		validates :last_name, presence: true
		validates :first_name, presence: true
		validates :email, presence: true
		validates :adress, presence: true
		validates :text, presence: true

end
