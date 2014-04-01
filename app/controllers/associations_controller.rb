class AssociationsController < ApplicationController


def new
	@association = Association.new
end
 
def create
	@association = Association.new association_params
	@association.save if @association.valid?
	gb = Gibbon::API.new("62f2fb210e5b52601f3646a44c3923c2-us3")	
	list_id = "be69e57317"
	begin
	gb.lists.subscribe({
		id: list_id, 
		email: {email: params[:association][:email]},
		double_optin: true
	 })
	notice = "Merci de confirmer votre inscription :)"
	rescue Gibbon::MailChimpError => e 
		notice = e.message
	end
	render 'voluntaries/create'
end

private

def association_params
	params.require(:association).permit(:last_name, :description, :address, :email, :besoins, :phone)
end
end
