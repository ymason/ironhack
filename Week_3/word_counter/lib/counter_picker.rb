class CounterPicker
	def initialize:(operation, word_counter)
		@operation = operation
		@word_counter = word_counter
if
	@operation == "Upper"
	puts word_counter.upper
elsif
	@operation == "Lower"
	puts word_counter.lower
elsif
	@operation == "Reverse"
	puts word_counter.reverse
elsif
	@operation == "Words"
	puts "The number of words in your address was #{word_counter.word_counter}"
elsif
	@operation == "Letters"
	puts "The number of words in your address was #{word_counter.letters_counter}"
else
	puts "Your input isn't valid, please try again!"
	end
end