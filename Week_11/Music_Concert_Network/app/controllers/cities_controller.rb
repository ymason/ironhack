class CitiesController < ApplicationController

	def new
		@city = City.new
	end

	def create
		@city = City.new(
			name: params[:city][:name]
			)

		@city.save

		redirect_to concerts_path
	end
end
