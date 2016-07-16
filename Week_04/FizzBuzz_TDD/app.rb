# If number divided by 3 fizz
# If number divided by 5 buzz
# If number divided by 15 fizzbuzz

require_relative('lib/fizzbuzz')

fizzbuzz = FizzBuzz.new

puts fizzbuzz.fizz_printer(100)