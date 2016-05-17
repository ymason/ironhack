class Game
puts "Your move buddy, add position: (#,#)"
position = gets.chomp

puts "X or O"
xoro = gets.chomp

my_board.add_character([position], "#{xoro}")

if my_board.winner?
	puts "You are winner."
end
end