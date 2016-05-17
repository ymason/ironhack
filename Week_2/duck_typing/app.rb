#Vehicle Types

	# Motorcycle
	# Sedan
	# Hoverboard
	# Unicycle
	# 18 Wheeler

# Wheel Counter

require_relative('lib/motorcycle')
require_relative('lib/sedan')
require_relative('lib/hoverboard')
require_relative('lib/unicycle')
require_relative('lib/truck')
require_relative('lib/wheelcounter')

ninja = Motorcycle.new
mazda = Sedan.new
hoverboard = Hoverboard.new
my_cycle = Unicycle.new
truck = Truck.new

array_of_vehicles = [ninja, mazda, hoverboard, my_cycle, truck]

wheel_counter = WheelCounter.new(array_of_vehicles)

puts wheel_counter.count_wheels