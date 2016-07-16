require("imdb")

class MovieSearch

	def initialize(movies)
		@movies= movies
	end

	def filter
		chart = []

		i = Imdb::Search.new(@movies)
		@search = i.movies

			@search[0..20].each do | movie |
				if movie.poster
					chart.push(movie)
				end
			end
		chart[0...9]
	end
end