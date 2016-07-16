class FizzBuzz

	def fizz?(number)
		number % 3 == 0
	end

	def buzz?(number)
		number % 5 == 0
	end

	def fizz_buzz?(number)
		fizz?(number) && buzz?(number)
	end

	def fizz_printer(number)
		array = []

		(1..number).each do | num |
			if fizz_buzz?(num)
				array.push("FizzBuzz")
			elsif buzz?(num)
				array.push("Buzz")
			elsif fizz?(num)
				array.push("Fizz")
			else
				array.push(num)
			end
		end
		
		array
	end
end
			# array.push(num)

				# elsif buzz?(number)
				# "buzz".push
				# elsif fizzbuzz?(number)
				# "fizzbuzz".push
				# end
				# array

		# if number.div(3)[0]
		# 	number = "fizz"

		# elsif number.div(5)[0]
		# 	number = "buzz"

		# if number % 15 == 0
		# 	 "fizzbuzz"
		# elsif number % 3 == 0
		# 	 "fizz"
		# elsif number % 5 == 0
		# 	 "buzz"
		# else number % 3 != 0 && number % 5 != 0
		# 	 number