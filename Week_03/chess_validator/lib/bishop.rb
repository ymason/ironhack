require_relative('diagonal')

class Bishop < Piece
	include Diagonal
	def can_move?(ending_x, ending_y)
		diagonal_move?(ending_x, ending_y)
	end
end