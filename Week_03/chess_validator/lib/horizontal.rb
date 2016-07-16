module Horizontal
	def horizontal_move?(ending_x, ending_y)
		difference_x = @starting_x - ending_x
		difference_y = @starting_y - ending_y

		(difference_x == 0 && difference_y != 0) || (difference_y == 0 && difference_x != 0)
	end
end