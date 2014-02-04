class Voluntary < ActiveRecord::Base
	validates :email, presence: true
end
