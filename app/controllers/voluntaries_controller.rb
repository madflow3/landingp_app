class VoluntariesController < ApplicationController

def new
	@voluntary = Voluntary.new
end

def create
	@voluntary = Voluntary.new voluntary_params
	@voluntary.save if @voluntary.valid? 
end

private

def voluntary_params
	params.require(:voluntary).permit(:last_name, :first_name, :description, :get_missions, :email)
end

end
