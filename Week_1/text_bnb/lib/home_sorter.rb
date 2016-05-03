# Attributes
	# Homes

# Actions
	# Print all homes
	# Sort homes by price or capacity
	# Find price average
	# Filter by city
	# Find base on price

class HomeSorter
def initialize(homes)
	@homes = homes
	end

def home_printer
	@homes.each do | home |
		puts "#{home.name} in #{home.city}"
		puts "Price: #{home.price}"
		puts "Capacity: #{home.capacity}\n"
		puts ""
		end
	end
end