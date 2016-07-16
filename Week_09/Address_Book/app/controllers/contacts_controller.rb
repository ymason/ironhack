class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create

	# Create new Contact from params[:contact]
	    contact = Contact.new(
	      :name => params[:contact][:name],
	      :address => params[:contact][:address],
	      :phone => params[:contact][:phone],
	      :email => params[:contact][:email])

	# Now we save the contact
    	contact.save

    	redirect_to("/contacts")

	# Render contact's attributes
	    # render(:text => contact.attributes)

		# render(:text => params[:contact].inspect)

		# render(:text => "This route is contacts#create.")

		# @project = Project.new(
		# 	name: params[:project][:name],
		# 	description: params[:project][:description]
		# 	)
		# @project.save

		# redirect_to '/projects'
	end

	def list
		@contacts = Contact.all
	end

	def show
		@contact = Contact.find_by(id: params[:id])
		unless @contact
			render 'no_projects_found'
		end
	end

end
