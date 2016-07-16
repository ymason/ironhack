class TimeEntriesController < ApplicationController

	def edit
		@project = Project.find(params[:project_id])
		# @time_entry = TimeEntry.find(params[:id]) <--- wrong way
		@time_entry = @project.time_entries.find(params[:id])
	end

	def destroy
		flash[:success] = "Time Entry Deleted"

		@project = Project.find(params[:project_id])

		@time_entry = @project.time_entries.find(params[:id])

		@time_entry.destroy
		
		redirect_to project_time_entries_path(@project)
	end

	def create
		#input: params[:project_id] and params[:time_entry]
		#Find resources needed

		@project = Project.find params[:project_id]

		#create strong parameters whitelist
		#permit is whitelisting only those attributes to be assigned

		# without permit: @project.time_entries.new params[:time_entry]

		@time_entry = @project.time_entries.new(time_entry_params)
		if @time_entry.save
			redirect_to project_time_entries_path(@project), notice: "Time entry created successfully"
		else
			render 'new'
		end
	end

	def update
		
		# define variables
		@project = Project.find(params[:project_id])

		@time_entry = @project.time_entries.find(params[:id])

		# set parameters = time_entry_params

		# run  process
		if @time_entry.update(time_entry_params)
			redirect_to project_time_entries_path(@project)
		else
			render 'edit'
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

	private

	def time_entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date, :comments)
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
