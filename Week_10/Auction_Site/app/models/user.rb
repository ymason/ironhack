class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :products
	has_many :reviews
	has_many :bids
	has_many :ratings
	validates :email, uniqueness: true, presence: true
	validates :name, presence: true

	def winning_bids
		products = Product.where("deadline < ?", DateTime.now)

		winning_bids = []

		products.each do | product |
			if product.high_bid != nil && product.high_bid.user_id == self.id
			winning_bids.push(product)
			end
		end
		winning_bids
	end

	def average_rating

		user_ratings = self.ratings


		number_of_ratings = user_ratings.length
		
		# user_rating.each do |user|
		#     number_of_rating[user] += 1
		# end

		sum_of_ratings = 0

		user_ratings.each do | rating |
			sum_of_ratings += rating.rating
		end

		if user_ratings.any?
			average_rating = sum_of_ratings / number_of_ratings
		else

		end
			average_rating
	end
end