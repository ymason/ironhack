require_relative('salary_payable')

class SalariedEmployee < Employee
	include SalaryPayable

	def initialize(name, email, salary)
		super(name, email)
		@salary = salary

	end

	def calculate_salary
		calculate_payment
	end
end