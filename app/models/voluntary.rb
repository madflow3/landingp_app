class Voluntary < ActiveRecord::Base
	validates :email, :age, presence: true
  has_many :localisations, as: :localisable
end
