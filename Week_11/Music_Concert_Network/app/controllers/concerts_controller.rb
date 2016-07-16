class ConcertsController < ApplicationController

	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new(
			artist: params[:concert][:artist],
			venue: params[:concert][:venue],
			city: params[:concert][:city],
			date: params[:concert][:date],
			price: params[:concert][:price],
			description: params[:concert][:description],
			)
		if @concert.save
			redirect_to concert_path(@concert.id)
		else
			render 'new'
		end
	end

	def show
		@concert = Concert.find(params[:id])
        @comments = @concert.comments
        @comment = Comment.new
	end

	def index

		@concerts_today = Concert.where('date = ?', Date.today)

		@concerts_month = Concert.where(date:
				Date.tomorrow.beginning_of_day..Date.today.end_of_month
			)
	end

	def search
		@concert_filter = Concert.where("price <= ?", params[:price_search].to_i)
	end

	def popular
		@concerts = Concert.order(comment_count: :desc)
		@popular_concerts = @concerts[0..9]
	end

end
