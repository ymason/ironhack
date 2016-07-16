require_relative('lib/employee')
require_relative('lib/hourly_employee')
require_relative('lib/salaried_employee')
require_relative('lib/multi_payment_employee')
require_relative('lib/payroll')

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

employees = [josh, nizar, ted]
payroll = Payroll.new(employees)
payroll.pay_employees