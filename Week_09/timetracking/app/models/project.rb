class Project < ActiveRecord::Base
	has_many :time_entries

	validates :name, uniqueness: true, presence: true, length: {maximum: 30}, format: {with: /[a-zA-Z0-9]/ }

	# def self.projects_for_month(month)
	# 	where(created_at: (month.beginning_of_month..month.end_of_month))
		# Project.limit(10.where(created_at: (may.beginning_of_month..may.end_of_month)).order("name ASC")

	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end

	def self.last_created_projects(limit)
		@projects = Project.limit(limit).order(created_at: :desc)
	end

	def total_hours_in_month(month, year)
		date = Time.now(year, month)
		entries_in_month = time_entries.where(
		date: date..date.end_of_month
		)
		
		hours = entries_in_month.sum { |e| e.hours}
		minutes = entries_in_month.sum { |e| e.minutes}
		hours + (minutes / 60)
	end
end
