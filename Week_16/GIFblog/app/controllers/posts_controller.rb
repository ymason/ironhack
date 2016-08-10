class PostsController < ApplicationController

	def new
		@post = Post.new
	end
	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to post_path(@post.id) 
		else
			render 'new'
		end
	end

	def show
		@post = Post.find_by(id: params[:id])
	end

	def index
		@posts = Post.where("votes > 5")
	end

	def upvote
		@post = Post.find_by(id: params[:id])

		@post.upvote

		redirect_to post_path(@post) 

	end

	def downvote
		@post = Post.find_by(id: params[:id])

		@post.downvote
		
		redirect_to post_path(@post) 
	end

	def low
		@posts = Post.low_rated_index

		render 'index'
	end

	def date
		@posts = Post.sort_by_date

		render 'index'
	end

	def votes	
		@posts = Post.sort_by_votes

		render 'index'
	end

	private 

	def post_params
		params.require(:post).permit(:title, :gif)
	end

end
