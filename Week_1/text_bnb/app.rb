require_relative('lib/home')
require_relative('lib/home_sorter')

joshs_home = Home.new("Joshs Home", "Miami", 1, 45)
farazs_home = Home.new("Farazs Home", "Miami", 2, 37)
bobs_home = Home.new("Bobs Home", "Cancun", 5, 35)
petes_home = Home.new("Petes Home", "Detroit", 4, 6)
nizars_home = Home.new("Nizards Home", "Puerto Rico", 3, 40)

list_of_homes = [joshs_home,
				farazs_home,
				bobs_home,
				petes_home,
				nizars_home
				]

# homes_that_is_thirty_five = list_of_homes.detect { | home | home.price == 35}

# puts homes_that_is_thirty_five.name

home_sorter = HomeSorter.new(list_of_homes)

home_sorter.home_printer

