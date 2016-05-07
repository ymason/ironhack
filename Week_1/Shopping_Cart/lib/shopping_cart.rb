class ShoppingCart
	def initialize
		@items = []
	end

	def add_to_cart(item)
		@items.push(item)
	end

	def checkout

		total = @items.reduce(0) do | total, single_item |
		total + single_item.price

	# total = 0

	# # @items.each do | single_item |
	# # 	total += single_item.price
		end
	# total
	end
end