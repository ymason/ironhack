class MultiPaymentEmployee < Employee
    def initialize(name, email, yearly_rate, hourly_rate, hours_worked)
        @name = name
        @email = email
       	@yearly_rate = yearly_rate
       	@hourly_rate = hourly_rate
       	@hours_worked = hours_worked
    end

    def calculate_salary
      base_pay = @yearly_rate / 52

      if @hours_worked > 40
      	overtime = @hourly_rate * @hours_worked
      else
      	overtime = 0
      end

      base_pay + overtime
    end
end