module Diagonal
	def diagonal_move?(ending_x, ending_y)
		difference_x = (@starting_x - ending_x).abs
		difference_y = (@starting_y - ending_y).abs

		(difference_x == difference_y && difference_x != 0)
	end
end