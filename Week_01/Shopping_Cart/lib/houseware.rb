class HouseWare < Item
	def price
		if @price > 100 #If price is less than 100
			@price * 0.95 #5% discount
		else
			@price
		end
	end
end