class ProductsController < ApplicationController

	def new
		@user = User.find params[:user_id]
		@product = @user.products.new
	end

	def all
		@all_products = Product.all
	end

	def create
		@user = User.find params[:user_id]

		#permit is whitelisting only those attributes to be assigned
		product_params = params.require(:product).permit(:title, :minimum_bid, :description, :deadline)

		# without permit: @project.time_entries.new params[:time_entry]

		@product = @user.products.new(product_params)
		if @product.save
			redirect_to user_products_path(@user.id)
		else
			render 'new'
		end

		# @product = Product.new(
		# 	title: params[:product][:title],
		# 	description: params[:product][:description],
		# 	deadline: params[:product][:deadline]
		# 	)

		# if @product.save
		# 	redirect_to product_path(@product.id) 
		# else
		# 	render 'new'
		# end
	end

	def show
		@user = User.find params[:user_id]
		@product = Product.find_by(id: params[:id])

		@bid = Bid.new
		@bids = @product.bids.order(amount: :desc)
		@high_bid = @bids.first
		@reviews = @product.reviews.all

		@review = @product.reviews.new

	end

	def index
		@user = User.find params[:user_id]
		@products = @user.products.all
	end

end
