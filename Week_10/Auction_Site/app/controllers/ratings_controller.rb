class RatingsController < ApplicationController
	def create
		@rating = Rating.new(
			rating: params[:rating][:rating],
			user_id: params[:user_id]
			)

		if @rating.save
			redirect_to user_path(@rating.user_id)
		else
			render 'new'
		end
	end
end

