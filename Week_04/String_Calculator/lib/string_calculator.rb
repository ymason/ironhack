class StringCalculator

	def add(numbers)

		numbers.split(',').reduce(0) { |sum, n| sum + n.to_i}
	end
end
		# if numbers.empty?
		# 	puts "0"
		# else
			# numbers_array = numbers.split(',')
			# numbers_array.reduce(0) do | sum, n |
			# 	sum += n.to_i
			
			# numbers = numbers.split(',')
			# sum = 0
			# numbers.each do | number |
			# 	sum += number.to_i 
		# 	end
		# 	# sum
		# end