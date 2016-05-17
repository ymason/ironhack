require_relative('horizontal')

class Rook < Piece
	include Horizontal
	def can_move?(ending_x, ending_y)
		horizontal_move?(ending_x, ending_y)
		end
end