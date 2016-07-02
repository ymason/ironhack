class TimeEntriesController < ApplicationController

	def create
		#input: params[:project_id] and params[:time_entry]
		@project = Project.find params[:project_id]

		#permit is whitelisting only those attributes to be assigned
		time_entry_params = params.require(:time_entry).permit(:hous, :minutes, :date)

		# without permit: @project.time_entries.new params[:time_entry]

		@time_entry = @project.time_entries.new(time_entry_params)
		if @time_entry.save
			redirect_to project_time_entries_path(@project)
		else
			render 'new'
		end
	end

	def index
	@project = Project.find(params[:project_id])
	@time_entries = @project.time_entries
	end

	def new
		@project = Project.find params[:project_id]
		@time_entry = @project.time_entries.new
	end

	# def create
		
	# 	# input: project's id and it'll be in the params hash

	# 	# 1. Find the project
	# 	# @project = Project.find(params[:project_id])
	# 	# # 2. Initialize a new time entry for the project
	# 	# @time_entry = @project.time_entries.new
	# 	# # 3. Save the time entry
	# 	# @time_entry.save
		
	# 	#outcome: a time entry for the given project is created
	# end
end
