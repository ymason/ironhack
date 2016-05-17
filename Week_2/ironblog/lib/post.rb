# Attributes(Title, Date, Text)
	# Title
	# Date
	# Text

# Actions (Methods)
	# Print single post

class Post
	attr_reader :date

	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end

	def display_post
		puts "#{@title} \n -------------------- \n #{@date} \n #{@text} \n \n"
	end
end