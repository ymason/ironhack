class Game
	def initialize(board)
		@board = board
	end

	def make_move(y, x, ending_y, ending_x)
		if @board.can_move?(y, x, ending_y, ending_x)
			
			@board.move_piece(y, x, ending_y, ending_x)
			"Good move!"
		else
			"You cannot move there."
		end
	end
end