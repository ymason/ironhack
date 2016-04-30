class ShakeShop
	def initialize
		@shakes = []
	end

	def add_shake(milkshake) #placeholder
		@shakes.push(milkshake) #placeholder
	end

	def checkout
		total = 0
		@shakes.each do | single_shake |
			total += single_shake.total_price
		end
		puts "Your price for today was: #{total}, have a nice day!"
	end
end

class MilkShake
	def initialize #(price, flavor)
		@base_price = 3
		@ingredients = []
		# @price = price
		# @flavor = flavor
	end

def add_ingredient(my_ingredient) #placeholder
	@ingredients.push(my_ingredient) #add ingredient to ingredients array
	end

def total_price
	sum = @base_price #MilkShake base_price = 3

	@ingredients.each do | single_ingredient | # .each do loops over each ingredient #placeholder
		sum += single_ingredient.price #gets price from class Ingredient
	#puts @base_price + @ingredients wouldd be wrong here
	end

	sum #puts sum for when .total_price
end
end

class Ingredient
	attr_accessor :price #allows price to be used out of class with sum
	def initialize(name, price)
		@name = name
		@price = price
	end
end

#List of things is called an Array

#Menu
banana = Ingredient.new("banana", 2)
nuts = Ingredient.new("Nuts", 5)
berries = Ingredient.new("Berries", 3)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
caramel = Ingredient.new("Caramel", 1)
#Menu

# My Shake
my_shake = MilkShake.new#(10, "Chocolate")
my_shake.add_ingredient(banana)
my_shake.add_ingredient(caramel)
puts my_shake.total_price

# Jakes Shake

jake_shake = MilkShake.new
jake_shake.add_ingredient(berries)
jake_shake.add_ingredient(nuts)

# Jakes Shop

jakes_shop = ShakeShop.new
jakes_shop.add_shake(my_shake)
jakes_shop.add_shake(jake_shake)
jakes_shop.checkout

