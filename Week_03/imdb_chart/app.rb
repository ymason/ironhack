require("imdb")
require_relative("lib/chart")

ghostbusters_search = Imdb::Search.new("Ghostbusters")
diehard_search = Imdb::Search.new("Die Hard")
godfather_search = Imdb::Search.new("The Godfather")
homealone_search = Imdb::Search.new("Home alone")
trek_search = Imdb::Search.new("Star Trek, the new generation")
livingdead_search = Imdb::Search.new("The night of the living dead")
titanic_search = Imdb::Search.new("Titanic")

movies = []
movies.push(ghostbusters_search.movies[0])
movies.push(diehard_search.movies[0])
movies.push(godfather_search.movies[0])
movies.push(homealone_search.movies[0])
movies.push(trek_search.movies[0])
movies.push(livingdead_search.movies[0])
movies.push(titanic_search.movies[0])

my_chart = MoviesChart.new(movies)

my_chart.print_chart
my_chart.print_number
my_chart.print_name

# movies.each do | movie |
# 	puts "#{movie.title}: #{movie.rating}"
# end