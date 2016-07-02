class User < ActiveRecord::Base

	has_many :products
	validates :email, uniqueness: true, presence: true
end
