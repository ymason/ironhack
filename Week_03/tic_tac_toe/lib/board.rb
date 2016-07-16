class Board
	def initialize
		#Spots    0,0  0,1 0,2	1,0  1,1 1,2	2,0  2,1 2,2
		@board = [
							["", "", ""], 
							["", "", ""], 
							["", "", ""]
						 ]
	end

	def show_board		
			board_container = ""
			@board.each do | row |
				# row = ["", "", "X"]
				row.each do | cell | 
					if cell.empty? # If the cell is an empty string
						board_container += " ___ "
					else # If it has a character
						board_container += " _#{cell}_ "
					end
				end
				# Create a new line after each row
				board_container += "\n"
			end
			# Print the board
			puts board_container
	end

	def add_character(location, marker)
		x = location[1] # 2
		y = location[0] # 1

		@board[y][x] = marker
	end

	def winner?
		if horizontal_winner? || diagonal_winner? || vertical_winner?
			true
		else
			false
		end
	end

	def horizontal_winner?
		if (@board[0][0] == @board[0][1] && @board[0][1] == @board[0][2] && @board[0][0] != "") ||
			(@board[1][0] == @board[1][1] && @board[1][1] == @board[1][2] && @board[1][0] != "") ||
			(@board[2][0] == @board[2][1] && @board[2][1] == @board[2][2] && @board[2][0] != "")
		end
		# 3 in a row horizontally?
	end

	def diagonal_winner?
		if (@board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && @board[0][0] != "") ||
			(@board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] && @board[0][2] != "")
		end
		# 3 in a row diagonally?
	end

	def vertical_winner?
		if (@board[0][0] == @board[1][0] && @board[1][0] == @board[2][0] && @board[0][0] != "") ||
			(@board[0][1] == @board[1][1] && @board[1][1] == @board[2][1] && @board[0][1] != "") ||
			(@board[0][2] == @board[1][2] && @board[1][2] == @board[2][2] && @board[0][2] != "")
		end
		# 3 in a row vertically?
	end
end