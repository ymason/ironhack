# Attributes
	#Attacking SpaceShip
	#Defending SpaceShip

# Actions
	# Battle

class SpaceShipBattle
def initialize(first_spaceship, second_spaceship)
	@attacking_spaceship = first_spaceship
	@defending_spaceship = second_spaceship
	end

def battle
	# Make the ships attack each other until one them is dead
	# Until the attacking spaceship's shield is 0 or the defending ships shield is 0
	
	until @attacking_spaceship.dead? || @defending_spaceship.dead?
		# Have each spaceship attack the other
		@attacking_spaceship.attack(@defending_spaceship)
		# Switch positions
		new_attacker = @defending_spaceship.clone
		new_defender = @attacking_spaceship.clone

		@attacking_spaceship = new_attacker
		@defending_spaceship = new_defender
	end
	puts "The battle had ended."
	end
end