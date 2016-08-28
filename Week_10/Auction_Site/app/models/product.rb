class Product < ActiveRecord::Base
	
	has_many :bids
	has_many :reviews
  	belongs_to :user

  	def high_bid
  		bids = self.bids.order(amount: :desc)
		high_bid = bids.first
  	end
  
end
