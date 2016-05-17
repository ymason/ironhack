# Motorcycle

class Motorcycle
	attr_reader :wheels

	def initialize
		@wheels = 2
	end
end

# Sedan

class Sedan
	attr_reader :wheels

	def initialize
		@wheels = 4
	end
end

# Hoverboard

class Hoverboard
	attr_reader :wheels

	def initialize
		@wheels = 0
	end
end

# Unicycle

class Unicycle
	attr_reader :wheels

	def initialize
		@wheels = 1
	end
end

# 18 Wheeler

class Truck
	attr_reader :wheels

	def initialize
		@wheels = 18
	end
end

class WheelCounter

	def initialize(array_of_vehicles)
		@array_of_vehicles = array_of_vehicles
	end

	def count_wheels
		total_wheels = 0
		@array_of_vehicles.each do | vehicle |
			total_wheels += vehicle.wheels
		end
		total_wheels
	end
end



ninja = Motorcycle.new
mazda = Sedan.new
hoverboard = Hoveboard.new
my_cycle = Unicycle.new
truck = Truck.new

array_of_vehicles = [ninja, mazda, hoverboard, my_cycle, truck]

wheel_counter = WheelCounter.new(array_of_vehicles)

puts wheel_counter.count_wheels