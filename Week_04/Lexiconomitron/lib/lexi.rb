class Lexiconomitron

	def eat_t(letters)
		letters.gsub(/[tT]/, '')
	end

	def shazam(array)

		output = [eat_t(array.first), eat_t(array.last)]

		output.each do | word |
			word.reverse!

			# split_word = reverse_word.split.first.last
			# spit_word.eat_t
		end

		output
		# first_word = array.first.eat_t
		# last_word = array.last.eat_t

		# fudge = []

		# first_word.push(fudge)
		# last_word.push(fudge)
	end
end

# lexi = Lexiconomitron.new

# puts lexi.shazam("great scott good got!")

# One of the methods of this Ruby interface is one called “shazam”. 

# It takes an array of words (for example [“This”, “is”, “a”, “boring”, “test”]). 

# With this array, it reverses the letters within the words (that is, [“sihT”, “si”, “a”, “gnirob”, “tset”]) 
# and ends up returning only the first and last words. 
# But Lexiconomitron eats Ts, so it returns [“sih, “se”].

# Write a test for the #shazam method. Instead of creating a new instance of the Lexiconomitron class for each test, add a before :each method that does it for you.

# Write the #shazam method to pass the test.