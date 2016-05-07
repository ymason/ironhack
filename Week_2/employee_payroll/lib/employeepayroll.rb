# Arguments
	# name
	# email
	# hourly pay 
	# hours worked in the week 

# Employee types
	# hourly
	# salary
	# multi

class Employee 
	attr_reader :name, :email
	def initialize(name, email)
		@name = name
		@email = email 
	end
end


class HourlyEmployee < Employee

	def initialize(name, email, hourly_rate, hours_worked)
		super(name, email)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked

	end

	def calculate_salary 
		calculate_salary = @hours_worked * @hourly_rate 
		return calculate_salary
	end

end


class SalariedEmployee < Employee

	def initialize(name, email, salary)
		super(name, email)
		@salary = salary

	end

	def calculate_salary
		calculate_salary = @salary/52
		return calculate_salary
	end

end


class MultiPaymentEmployee < Employee

	def initialize(name, email, salary, hourly_rate, hours_worked)
		super(name, email)
		@salary = salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked

	end

	def overtime
		if @hours_worked > 40
		overtime = (@hours_worked - 40) * @hourly_rate
		else
		0
		end
	end

	def calculate_salary
		calculate_salary = (@salary/52) + overtime
		return calculate_salary
		
	end

end
