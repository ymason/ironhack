#Each

# classmates = ["Sorrell", "Mary", "Mike"]

# 	classmates.each do | name |
# 	puts "Hood morning #{name}"
# end

# ["Sorrell", "Mary", "Mike"].each do | name |
# puts "Hood morning #{name}"
# end

#Map

cities = ["miami", "barcelona", "madrid"]

	pretty_cities = cities.map do | city |
		city.capitalize
	end

	# p pretty_cities

	# pretty_cities = cities.map { | city | city.capitalize }

	# p pretty_cities

# cities = ["miami", "madrid", "barcelona"].map do | city |
# 	city.capitalize
# end

# puts cities

#Reduce

# total = pretty_cities.reduce do |sum, city |
# 	sum + city
# 	end

# 	puts total

# total = cities.reduce(0) do | sum, city |
# 	sum + city.length
# end

# puts total/cities.length

cities.each_with_index do | city, index |
	puts "#{index}: #{city}"
end