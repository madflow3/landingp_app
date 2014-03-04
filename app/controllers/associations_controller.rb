class AssociationsController < ApplicationController

def new
	@association = Association.new
end

def create
	@association = Association.new association_params
	binding.pry
	@association.save if @association.valid?
end

private

def association_params
	params.require(:association).permit(:last_name, :description, :address, :email, :besoins, :phone)
end
end