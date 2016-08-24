class Product < ActiveRecord::Base
	
	has_many :bids
	has_many :reviews
  	belongs_to :user
  
end
