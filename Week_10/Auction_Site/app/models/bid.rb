class Bid < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  attr_reader :email

  validate :bid_cannot_be_lower_than_minimum_bid, :bid_cannot_be_lower_than_high_bid,
    :owner_cannot_bid_on_products

  def bid_cannot_be_lower_than_minimum_bid

  		user = self.user
  		product = self.product
  		bids = product.bids.order(amount: :desc)
  		high_bid = bids.first

  	if self.amount < product.minimum_bid
  		errors.add(:bid, "cannot be lower than minimum bid.")
	  end
	end

  def bid_cannot_be_lower_than_high_bid
  	bids = product.bids.order(amount: :desc)
  		high_bid = bids.first

  	if self.amount < high_bid.amount
  		errors.add(:bid, "cannot be lower than current high bid.")
  	end
  end

  def owner_cannot_bid_on_products

  	if user.id === product.user_id
  		errors.add(:user, "can't bid on own products")
	  end
	end

end
