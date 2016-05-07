class ProgrammingLanguage #We're defining the class and the attribute accesor to make it accessible further down
	attr_accessor :name, :age, :type
	def initialize (name, age, type)
		@name = name
		@age = age
		@type = type
	end
end

def array_printer(array) #this is a function we are printing the languages and calling each one
	array.each do | language |
		puts "Language: #{language.name} | Age: #{language.age} | Type System: #{language.type}"
	end
end

#This is the list of languages
ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

#Right here we are grouping all languages into an array
array_of_languages = [ruby, python, javascript, go, rust, swift, java]

#We are redifining the age of the previous array using map and adding one year to it
aged_languages = array_of_languages.map do | aged |
	aged.age += 1
	aged
end

#Sorting the array in reverse by age

#new_array = aged_languages.sort_by {|i| i.age}.reverse
#array_printer(new_array)

#Delete At

# new_array.delete_at(2)

# Shuffle

# array_printer(new_array.shuffle)

#Select only even numbers

# array_printer(new_array.select { |num| num.age.even?})

array_of_languages.map! do |language|
	language.name += "!!"
	language
end

array_printer(array_of_languages)

#Collect is basically like Map 

# array_with_ex = new_array.collect do | language |
# 	language.type += "!"
# 	language.name += " Language"
# 	language.age = "#{language.age} years"
# 	language
# end

# array_printer(array_with_ex)

