class BidsController < ApplicationController

	def create

		@user = User.find_by(email: params[:bid][:email])

		@product = Product.find_by(id: params[:product_id])

		@bid = Bid.new(
			amount: params[:bid][:amount],
			user_id: @user.id,
			product_id: @product.id
			)

		@bid.save

		redirect_to user_product_path(@user, @product)
	end
end
