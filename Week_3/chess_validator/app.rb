require_relative('lib/piece')
require_relative('lib/rook')
require_relative('lib/bishop')
require_relative('lib/queen')
require_relative('lib/king')
require_relative('lib/knight')
require_relative('lib/pawn')
require_relative('lib/diagonal')
require_relative('lib/horizontal')
require_relative('lib/board')
require_relative('lib/game')

my_board = Board.new


# Rooks
black_rook1 = Rook.new(1, 1, "black")
black_rook2 = Rook.new(1, 8, "black")
white_rook1 = Rook.new(8, 1, "white")
white_rook2 = Rook.new(8, 8, "white")

# Bishops

black_bish1 = Bishop.new(1, 3, "black")
black_bish2 = Bishop.new(1, 6, "black")
white_bish1 = Bishop.new(8, 3, "white")
white_bish2 = Bishop.new(8, 6, "white")

# Knights

black_knight1 = Knight.new(1, 2, "black")
black_knight2 = Knight.new(1, 7, "black")
white_knight1 = Knight.new(8, 2, "white")
white_knight2 = Knight.new(8, 7, "white")

# Queen

black_queen = Queen.new(1, 5, "black")
white_queen = Queen.new(8, 5, "white")

# King

black_king = King.new(1, 4, "black")
white_king = King.new(8, 4, "white")

#________________________________________________

# Add Rooks
my_board.add_piece(black_rook1, 1, 1)
my_board.add_piece(black_rook2, 8, 1)
my_board.add_piece(white_rook1, 1, 8)
my_board.add_piece(white_rook2, 8, 8)

# Add Bishops
my_board.add_piece(black_bish1, 3, 1)
my_board.add_piece(black_bish2, 6, 1)
my_board.add_piece(white_bish1, 3, 8)
my_board.add_piece(white_bish2, 6, 8)

# Add Knights
my_board.add_piece(black_knight1, 2, 1)
my_board.add_piece(black_knight2, 7, 1)
my_board.add_piece(white_knight1, 2, 8)
my_board.add_piece(white_knight2, 7, 8)

# Add Queens
my_board.add_piece(black_queen, 5, 1)
my_board.add_piece(white_queen, 5, 9)

# Add King
my_board.add_piece(black_king, 4, 1)
my_board.add_piece(white_king, 4, 8)

my_game = Game.new(my_board)
puts my_game.make_move(1, 1, 1 , 5)

# puts "Good Moves"
# my_board.can_move?(1, 1, 1, 5)
# my_board.can_move?(1, 1, 1, 6)

# puts "Bad Moves"
# my_board.can_move?(1, 1, 5, 1)
# my_board.can_move?(1, 1, 6, 1)
# my_board.can_move?(1, 1, 1, 10)

# p my_board

# # Rook Tests
# white_rook = Rook.new(1,1)
# puts "Good Rook Moves"
# puts white_rook.can_move?(1, 5)
# puts white_rook.can_move?(5, 1)
# puts "Bad Rook Moves"
# puts white_rook.can_move?(5, 3)


# # Bishop Tests
# puts "Good Bishop Moves"
# black_bishop = Bishop.new(1,1)
# puts black_bishop.can_move?(8,8)
# puts "Bad Bishop Moves"
# puts black_bishop.can_move?(8,7)

# # Queen Tests

# puts "Good Queen Moves"
# black_queen = Queen.new(1,1)
# puts black_queen.can_move?(8,8)
# puts black_queen.can_move?(5, 1)
# puts "Bad Queen Moves"
# puts black_queen.can_move?(8,7)
# puts black_queen.can_move?(5, 3)

# # King Tests
# puts "Good King Moves"
# black_king = King.new(1,1)
# puts black_king.can_move?(2,2)
# puts black_king.can_move?(1,2)
# puts "Bad King Moves"
# puts black_king.can_move?(3,1)

# # Knight Tests

# puts "Good Knight Moves"
# white_knight = Knight.new(4,4)
# puts white_knight.can_move?(5,6)
# puts white_knight.can_move?(6,3)
# puts "Bad Knight Moves"
# puts white_knight.can_move?(1,1)

# # Pawn Tests

# puts "White Pawn Moves"
# white_pawn = WhitePawn.new(1,2)
# puts white_pawn.can_move?(1,3)
# puts "Black Pawn Moves"
# black_pawn = BlackPawn.new(1,7)
# puts black_pawn.can_move?(1,5)

