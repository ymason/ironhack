class Board
	def initialize
		@board = [
			[ ],

			[ ],

			[ ],

			[ ],

			[ ],

			[ ],

			[ ],

			[ ],

			[ ],

		]
	end

	def add_piece(piece, y, x)
		@board[y][x] = piece
	end

	def on_board(y, x, ending_y, ending_x)
		# If piece is on the board.
		1 <= y && y <= 8 && 1 <= x && x <= 8 && 
		1 <= ending_y && ending_y <= 8 && 
		1 <= ending_x && ending_x <= 8
	end

	def legal_move(y, x, ending_y, ending_x)

		@board[y][x].can_move?(ending_x, ending_y) # If legal move for piece
		
		# @piece.can_move?(ending_x, ending_y) 
	end

	def friend_or_foe(y, x, ending_y, ending_x)
		if @board[ending_y][ending_x].nil? 
			true
		else
			if 
				@board[y][x].color == @board[ending_y][ending_x].color
				false
			else
				true
			end
		end
	end

	def can_move?(y, x, ending_y, ending_x)

		if 
			on_board(y, x, ending_y, ending_x) && friend_or_foe(y, x, ending_y, ending_x) && legal_move(y, x, ending_y, ending_x)
			# puts "That is a great move!"
			true
		else
			# puts "You cannot make this move."
			false
		end
	end

	def move_piece(y, x, ending_y, ending_x)
		@board[y][x] == @board[ending_y][ending_x]
		end
end

# def empty_piece(ending_y, ending_x)

# 	@board[ending_y][ending_x].nil? # If there is already a piece there
# end