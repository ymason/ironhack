require_relative('lib/shopping_cart')
require_relative('lib/item')
require_relative('lib/fruit')
require_relative('lib/houseware')
-
# Application
# Store Menu
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