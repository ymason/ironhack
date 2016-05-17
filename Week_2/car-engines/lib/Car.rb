class Car
	def initialize(name, sound, engine)
		@name = name
		@sound = sound
		@engine = engine
	end

	def start
		puts "The #{@name}'s engine makes the sound #{@engine.move_pistons} and then the car goes #{@sound}!"
		# @engine.move_pistons
		# @sound
	end
end