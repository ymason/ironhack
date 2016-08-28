class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(
			name: params[:user][:name],
			email: params[:user][:email]
			)

		if @user.save
			redirect_to user_path(@user.id) 
		else
			render 'new'
		end
		
	end

	def show
		@user = User.find_by(id: params[:id])

		@rating = Rating.new

		# show winning bids
	end

end
