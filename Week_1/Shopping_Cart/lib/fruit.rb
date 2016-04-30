class Fruit < Item
	def price
		today = Time.now #Today is now defined by the current day and time
		if today.saturday? || today.sunday? #If saturday or sunday 
			@price * 0.90 #Then discount at 10
		else
			@price
		end
	end
end