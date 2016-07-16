require_relative('salaried')

class SalariedEmployee < Employee
		include Salaried

    def initialize(name, email, yearly_rate)
        @name = name
        @email = email
       	@yearly_rate = yearly_rate
    end

    def calculate_salary
    	calc_payment
    end
end