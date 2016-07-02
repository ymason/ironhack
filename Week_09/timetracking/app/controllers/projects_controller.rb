class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(
			name: params[:project][:name],
			description: params[:project][:description]
			)
		@project.save

		redirect_to '/projects'
	end

	def show
		@project = Project.find_by(id: params[:id])
		unless @project
			render 'no_contacts_found'
		end
		# begin
		# @project = Project.find(params[:id])
		# rescue ActiveRecord::RecordNotFound
		# 	render 'no_projects_found'
		# end
	end
end
