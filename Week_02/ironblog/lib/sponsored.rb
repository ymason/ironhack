class Sponsored < Post

	def initialize(title, date, text)
	title = "***** #{title} *****"
	super(title, date, text)
	end
end

	# 	super(title, date, text)
	# puts "******#{@title}****** \n -------------------- \n #{@date} \n #{@text} \n \n"
	# end