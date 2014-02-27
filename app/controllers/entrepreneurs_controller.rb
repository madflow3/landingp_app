class EntrepreneursController < ApplicationController

def new
	@entrepreneur = Entrepreneur.new
end

def create
	@entrepreneur = Entrepreneur.new entrepreneur_params
	@entrepreneur.save if @entrepreneur.valid? 
end

private

def entrepreneur_params
	params.require(:entrepreneur).permit(:last_name, :first_name, :email, :phone, :address, :description)
end

end
