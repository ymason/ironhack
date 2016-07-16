# server.rb
require "sinatra"
require_relative('lib/Calculator')
require "sinatra/reloader" if development?

calculator = Calculator.new

get "/" do
	@result = IO.read("public/result.txt")
	erb(:home)
end

post "/calculate" do
	@operation = params["operation"] # => "addition", "subtraction", "multiplication", or "divison"
	@first = params[:first_number].to_i
	@second = params[:second_number].to_i

	if @operation == "add"
		@calculate = calculator.calculate_add(@first, @second)
	elsif @operation == "subtract"
  		@calculate = calculator.calculate_subtract(@first, @second)
 	elsif @operation == "multiply"
  		@calculate = calculator.calculate_multiply(@first, @second)
  	elsif @operation == "divide"
  		@calculate = calculator.calculate_divide(@first, @second)
  	end

  	erb(:calculate)

end

post "/save" do
	result = params["calculate"]
  	IO.write("public/result.txt", result)
  	redirect to("/")
end


get "/add" do
  	erb(:add)
end

post "/calculate_add" do
	first = params[:first_number].to_i
	second = params[:second_number].to_i
  	calculator.calculate_add(first, second)
end

get "/subtract" do
  	erb(:subtract)
end

post "/calculate_subtract" do
	first = params[:first_number].to_i
	second = params[:second_number].to_i
  	calculator.calculate_subtract(first, second)
end

get "/multiply" do
  	erb(:multiply)
end

post "/calculate_multiply" do
	first = params[:first_number].to_i
	second = params[:second_number].to_i
  	calculator.calculate_multiply(first, second)
end

get "/divide" do
 	erb(:divide)
end

post "/calculate_divide" do
	first = params[:first_number].to_i
	second = params[:second_number].to_i
  	calculator.calculate_divide(first, second)
end