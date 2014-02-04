class AssociationsController < ApplicationController

def new
	@association = Association.new
end

def create
	@association = Association.new association_params
	@association save if @association.valid? 
end

private

def association_params
	params.require(:association).permit(:name, :presentation, :adress, :needs, :email)
end

end