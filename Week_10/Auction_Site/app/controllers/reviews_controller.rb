class ReviewsController < ApplicationController

	before_action :authenticate_user!

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

	def edit
		@review = Review.find_by(id: params[:id])

		# edit_review = review.update(
		# 	description: params[:review][:description]
		# 	)

		# if review.save
		# 	redirect_to user_product_path(params[:user_id], params[:product_id])
		# else
		# 	render 'new'
		# end
	end

	def update
	    @review = Review.find(params[:id])
	    if @review.update_attributes(description: params[:review][:description])

	    	redirect_to user_product_path(params[:user_id], params[:product_id])
	      # Handle a successful update.
	    else
	      render 'edit'
	    end
  	end

	def destroy
		@review = Review.find(params[:id])

		if 
			@review.destroy

			flash[:success] = "Review deleted"

			redirect_to user_product_path(params[:user_id], params[:product_id])
		else
			render 'new'
		end
	end

	 # private

  #   def review_params
  #     params.require(:review).permit(:description, :user_id , :product_id)
  #   end
end
