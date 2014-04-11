class Association < ActiveRecord::Base
		validates :last_name, presence: true
		validates :email, presence: true
		validates :time, presence: true
		validates :address, presence: true
		validates :phone, presence: true
		validates :description, presence: true
		validates :besoins, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	

end
		
