#Server.rb

require "sinatra"

get "/" do
	"Hello Sinatra"
end

get "/hi" do
	@greeting = "Hi, this is another route in my application"
	erb :hi
end

get "/about" do
	erb :about
	end

get "/time" do
	@time = Time.now
	erb :time
end

get "/pizza" do
	@ingredients = ["pepperoni", "sausage", "pepper", "mushrooms"]
	erb :pizza
end

get "/users/:username" do
	@username = params[:username]
	erb :profile
end

get "/hours/ago/:hours" do
	@hours = params[:hours]
	@ago = (@hours.to_i*60)*60
	@time = Time.now - @ago
	erb :hoursback


end