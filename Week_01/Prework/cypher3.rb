def solve_cipher(input)
	words = input.split("")

	string_container = ""

	words.each do | letter |
	if letter == " "
		string_container += " "
	else
		string_container += (letter.ord + -3).chr
	end	
end
	
  #your code goes here
  string_container
end

# puts solve_cipher("ifmmp")
# should return "hello"

puts solve_cipher("|hpdql")