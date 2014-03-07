class Voluntary < ActiveRecord::Base
	validates :email, :age, presence: true
end
