require("pry")
require_relative("lib/authenticator.rb")
require_relative("lib/word_counter.rb")

auth = Authenticator.new("Josh", "swordfish")

# Get login credentials

puts "Username:"
name = gets.chomp

puts "Password:"
password = gets.chomp

if auth.verify(name, password)
	puts "Welcome back, #{name}"
	puts "Please enter your favorite saying to confirm:"
	sentence_input = gets.chomp
	my_counter = WordCounter.new(sentence_input)

binding.pry #Debugging Method using pry

	puts "
	Please type one of the following choices: 
	\n\n 
	1) Type 'Upper' for uppercase letters. 
	\n\n 
	2) Type 'Lower' for lowercase letters. 
	\n\n 
	3) Type 'Reverse' to reverse words 
	\n\n 
	4) Type 'Words' to count words. 
	\n\n 
	5) Type 'Letters' to count letters.
	\n
	"
	answer = gets.chomp
if
	answer == "Upper"
	puts my_counter.upper
elsif
	answer == "Lower"
	puts my_counter.lower
elsif
	answer == "Reverse"
	puts my_counter.reverse
elsif
	answer == "Words"
	puts "The number of words in your address was #{my_counter.word_counter}"
elsif
	answer == "Letters"
	puts "The number of words in your address was #{my_counter.letters_counter}"
else
	puts "Your input isn't valid, please try again!"
	end
end