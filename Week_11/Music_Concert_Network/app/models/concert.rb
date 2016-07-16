class Concert < ActiveRecord::Base
	belongs_to :city
	has_many :comments
	validates :artist, :venue, :city_id, :date, :price, :description, :presence => true
end
