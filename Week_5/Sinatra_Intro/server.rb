#Server.rb

require "sinatra"
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

users = {
	josh: "swordfish",
	faraz: "password"
}

post "/verify" do
	@username = params[:username]
	@password = params[:password]

	if users.has_key?(@username.to_sym) && users[@username.to_sym] == @password
		session[:current_user] = @username
		redirect to("/users/#{@username}")
	else
		redirect to("/login")
	end
end

post "/logout" do
	redirect to("/login")
end

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

get "/session_test/:text" do
	text = params[:text]
	session[:saved_value] = text
end

get "/session_show" do
	@my_text = session[:saved_value]
	erb :session_show
end

get "/login" do
	erb :login
end



# session[:current_user] = faraz / josh / your name

# Create a route to show a login form
	#Username / Password

# Create another route to verify if the user's credentials are correct
	# If they are correct show them their profile page
	# Save the user into session
	#If incorrect, send them back to the form