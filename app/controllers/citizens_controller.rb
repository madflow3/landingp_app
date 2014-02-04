class CitizensController < ApplicationController

def new
	@citizen = Citizen.new
end

def create
	@citizen = Citizen.new citizen_params
	@citizen.save if @citizen.valid? 
end

private

def citizen_params
	params.require(:citizen).permit(:last_name, :first_name, :description, :get_missions, :email)
end

end
