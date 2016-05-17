class Payroll
  def initialize(employees)
      @employees = employees
  end

  def pay_employees
     gross_paid = 0

     @employees.each do | employee | 
     	gross_paid += employee.calculate_salary
     	puts "You have paid #{employee.name} #{employee.calculate_salary}"
     end

     taxed = gross_paid + (gross_paid * 0.18)
     puts "The total paid this week is: #{taxed}"
  end
end