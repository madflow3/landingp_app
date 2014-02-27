class ContactFormsController < ApplicationController
	def new
		@contact_form = ContactForm.new
	end 

	def create
		begin
		@contact_form = ContactForm.new(params[:contact_form])
		@contact_form.request = request 
		if @contact_form.deliver
			flash.now[notice] = 'Merci pour votre message!'
		else
			render :new
		end 
	rescue ScriptError
		flash[:error] = 'Ce message est un spam.'
	end
	end	
end
