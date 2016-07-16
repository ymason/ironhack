
# What does a car do?
# Honks
# Starts
# Plays Radio

# Capitals should only be used for constants or Classes

# What defines my car? What are it's attributes
# Color
# Prince
# Engine

# Initialize gets called when you make an Initialized Method

class Car

	attr_accessor :color

	def initialize(my_color, my_sound, my_car)
		@color = my_color
		@sound = my_sound
		@car = my_car
		# puts "CREATING A NEW CAR"
	end
	# Instance Method
def honk
	puts "My #{@color} #{@car} goes #{@sound}"
end

def play_radio
	puts "Drizzy drake all summer sixxt66n (on the radio)"
	end
end

class RaceCar < Car
	def honk
		puts "My #{@color} #{@car} goes #{@sound.upcase}"
	end
end

mazda = Car.new("Red", "Wizz", "Mazda") #Everything within a bracket
volvo = Car.new("Yellow", "Whew", "Volvo")
honda = Car.new("Orange", "Vrrm", "Honda")
tesla = Car.new("Black", "WHOA", "Tesla")
escalade = Car.new("Silver", "Guzzz", "Escalade")

ferrari = RaceCar.new("Red", "Vroooom vrooom", "Ferrari")

puts ferrari.honk

# volvo.honk
# mazda.honk

# volvo.play_radio

# escalade.color = "Green"
# puts escalade.color


# def say_hello
# 	puts "Hello"
# end

# say_hello