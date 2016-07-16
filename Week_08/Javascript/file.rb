def eat(food)
	puts "Eating some #{food}"
end

eat "Pizza"

def find_occurrences
end

i = 1

while i <= 42
	puts i
	i += 1
end

foods = [ 'pizza', 'cookies', 'bread' ]

caps_foods = foods.map do | food |
	food.upcase
end

p caps_foods

nums = [2, 6 , 7, 42]

total = nums.reduce do | sum, num |
	 sum + num
end

breadless = foods.select do
	food != "Bread"
end

food = "Pizza"

if food == "Pizza"
	puts ""
elsif food == "Sushi"
	puts ""
else
	puts ""
end

def add(a, b)