class Payroll
	
	
	def initialize(employees)
		@employees = employees
	end

	def pay_employees
		@employees.each do | employee |
			puts "#{employee.name} gets paid #{employee.calculate_salary}"
		end
	end

	# def pay_taxes
	# 	@employees.each do | tax |
	# 		calculate_salary * .18
	# 		puts "Total Payroll including taxes"
	# 	end
	# end
end