class AssociationsController < ApplicationController

def new
	@association = Association.new
end
 
def create
	@association = Association.new association_params
	@association.save if @association.valid?
	gb = ("55c2899ec9189665ff2b7cce4692dd69-us3")	
	list_id = b2845c8399

end

private

def association_params
	params.require(:association).permit(:last_name, :description, :address, :email, :besoins, :phone)
end
end