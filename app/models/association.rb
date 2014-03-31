class Association < ActiveRecord::Base
		validates :last_name, presence: true
		validates :email, presence: true
		validates :time, presence: true
		validates :address, presence: true
		validates :phone, presence: true
		validates :description, presence: true
		validates :besoins, presence: true
    has_one :localisation, as: :localisable
end
		
