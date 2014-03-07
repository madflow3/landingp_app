class VoluntariesController < ApplicationController

def new
	@voluntary = Voluntary.new
end

def create
	@voluntary = Voluntary.new voluntary_params
	@voluntary.save if @voluntary.valid? 
	gb = Gibbon::API.new("62f2fb210e5b52601f3646a44c3923c2-us3")	
	list_id = "be69e57317"
	begin
	gb.lists.subscribe({
		id: list_id, 
		email: {email: params[:voluntary][:email]},
		double_optin: true
	 })
	notice = "Merci de confirmer votre inscription :)"
	rescue Gibbon::MailChimpError => e 
		notice = e.message
	end
end

private

def voluntary_params
	params.require(:voluntary).permit(:last_name, :first_name, :description, :get_missions, :email)
end

end
