class ReviewsController < ApplicationController

	def create
		@review = Review.new(
			description: params[:review][:description],
			user_id: params[:user_id],
			product_id: params[:id]
			)

		if @review.save
			redirect_to user_product_path(params[:user_id], params[:id] )
		else
			render 'new'
		end
	end
end
