class BidsController < ApplicationController

	def create

		@user = User.find_by(email: params[:bid][:email])

		@product = Product.find_by(id: params[:product_id])

		@bid = Bid.new(
			amount: params[:bid][:amount],
			user_id: @user.id,
			product_id: @product.id
			)

		@bids = @product.bids.order(amount: :desc)
		@high_bid = @bids.first

		if @bid.save
			redirect_to user_product_path(@user, @product)
		else 
			render 'products/show'
		end
	end
end
