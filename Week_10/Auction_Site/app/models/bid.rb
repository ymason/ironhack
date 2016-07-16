class Bid < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  attr_reader :email
end
