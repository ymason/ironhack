class TimeEntry < ActiveRecord::Base
	belongs_to :project

	validates :project, presence: true
	validates :hours, :minutes, presence: true, numericality: true
end
