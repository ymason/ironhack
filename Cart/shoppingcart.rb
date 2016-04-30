class ShoppingCart
	def initialize
		@items = []
	end

	def add_to_cart(item)
		@items.push(item)
	end

	def checkout
	total = 0
	@items.each do | single_item |
	total += single_item.price
		end
	total
	end
end

class Item
	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		@price
	end
end

class HouseWare < Item
	def price
		if @price > 100 #If price is less than 100
			@price * 0.95 #5% discount
		else
			@price
		end
	end
end

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

#Store Menu
	banana = Fruit.new("Banana", 10)
	orange_juice = Item.new("Orange Juice", 10)
	rice = Item.new("Rice", 1)
	vaccuum = HouseWare.new("Vacccum", 150)
	anchovies = Item.new("Anchovies", 2)

my_cart = ShoppingCart.new
my_cart.add_to_cart(banana)
my_cart.add_to_cart(banana)
my_cart.add_to_cart(vaccuum)
my_cart.add_to_cart(rice)

puts "Your total today is $#{my_cart.checkout}. Have a nice day!"