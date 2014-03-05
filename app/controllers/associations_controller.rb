class AssociationsController < ApplicationController

def new
	@association = Association.new
end
 
def create
	@association = Association.new association_params
	@association.save if @association.valid?
	gb = Gibbon::API.new("55c2899ec9189665ff2b7cce4692dd69-us3")	
	list_id = "b2845c8399"

begin
	gb.lists.subscribe({
	:id => list_id,
	:email => {:email => params[:email]},
	:double_optin => true
	})
	notice = "C'est pratiquement fini;) Merci de confirmer votre inscription"
rescue Gibbon::MailChimpError => e 
	notice = e.message
end
	#redirect_to root_url, notice: notice
end

private

def association_params
	params.require(:association).permit(:last_name, :description, :address, :email, :besoins, :phone)
end
end
