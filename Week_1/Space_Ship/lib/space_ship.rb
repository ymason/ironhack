#Attributes
	# Shields
	# Blasters
	# Speed
	# Damage

	# Backburner
	# Pilots
	# Power Level

# Actions
	# Fly
	# Warp Speed
	# Shoot
	# Attack another SpaceShip

class SpaceShip

	attr_accessor :shield, :name

	@@space_ship_counter = 0

	def initialize(name, shield, blasters, speed, damage)
		@name = name
		@shield = shield
		@blasters = blasters
		@speed = speed
		@damage = damage
		# Class Variable, related to all SpaceShips, use sparingly
		@@space_ship_counter += 1
	end

	def dead?
		if @shield <= 0
			true
		else
			false
		end
	end

	def fly
		puts "The spaceship is flying at #{@speed} parsecs"
		end

	def attack(another_spaceship)
		another_spaceship.shield -= @damage
		puts "#{@name} hit for #{@damage}"
		puts "#{another_spaceship.name} has #{another_spaceship.shield} left"
		end

	# Class Method, related to all instances of class
	def self.number_of_spaceships
	puts "The number of spaceships created is: #{@@space_ship_counter}"
	end
end