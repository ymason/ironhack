class WordCounter
	def initialize(string)
		@string =string
	end

	def word_counter
		words = @string.split
		words.length
	end

	def letters_counter
		@string.length
	end

	def reverse
		@string.reverse
	end

	def upper
		@string.upcase!
	end

	def lower
		@string.downcase!
	end
end