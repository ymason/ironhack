require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require("imdb")
require_relative('lib/app')

enable(:sessions)

get "/" do
	erb :search
end

get "/search" do
	@search = params[:search]

	# if session[:search] != nil
	# 	@movies = MovieSearch.new(session[:search])
	# else
	# 	@movies = MovieSearch.new(@search)
	# 	session[:search] = @search
	# end

	@movies = MovieSearch.new(@search)

	@filter_movies = @movies.filter

	@correct_movie = @filter_movies.sample

	@question1 = "Which movie was made in #{@correct_movie.year}?"
	@question2 = "Which movie hade the actor/actress #{@correct_movie.cast_members[2]} in it?"
	@question3 = "Which movie was directed by #{@correct_movie.director.join(", ")}?"
	@question4 = "Which movie had the character #{@correct_movie.cast_characters[1]} in it?"

	@questions = [@question1, @question2, @question3, @question4]

	@random_question = @questions.sample

	if @filter_movies.length <= 2
		erb :fail
	else 
		erb :results
	end
end