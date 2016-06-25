class Project < ActiveRecord::Base

	# def self.projects_for_month(month)
	# 	where(created_at: (month.beginning_of_month..month.end_of_month))
		# Project.limit(10.where(created_at: (may.beginning_of_month..may.end_of_month)).order("name ASC")

	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end

	def self.last_created_projects(limit)
		@projects = Project.limit(limit).order(created_at: :desc)
	end
	
end
