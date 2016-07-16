require_relative('lib/string_calculator')

calc = StringCalculator.new

if calc.add("") == 0
	puts "Returned zero for an empty string"
else
	puts "Something went wrong with empty string"
end

if calc.add("2") == 2
	puts "Returned single digit for single string"
else
	puts "Something went wrong with single string"
end

if calc.add("3, 4, 5") == 12
	puts "Returned added string for string"
else
	puts "Something went wrong with string"
end