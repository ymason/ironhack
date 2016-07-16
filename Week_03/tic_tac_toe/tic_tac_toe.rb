require_relative('lib/board')
require_relative('lib/game')

my_board = Board.new

# my_board.show_board
# my_board.show_board
# my_board.add_character([2,2], "O")
# puts "Hey I added a character"
# my_board.show_board

# my_board.add_character([0,2], "X")
# my_board.add_character([1,2], "X")
# my_board.add_character([2,2], "X")

puts "Your move buddy, add position: (#,#)"
position = gets.chomp

puts "X or O"
xoro = gets.chomp

my_board.add_character([position], "#{xoro}")

if my_board.winner?
	puts "You are winner."