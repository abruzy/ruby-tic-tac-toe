require_relative '../lib/board.rb'

puts "Enter your name"
name = gets.chomp.capitalize

puts "What tools would you like to choose"
tool = gets.chomp.upcase

player1 = Player.new(name, tool)

puts "Next player, please enter your name"
name2 = gets.chomp.capitalize


tool2 = tool=='X'? "O" : "X"

player2 = Player.new(name2, tool2)
puts player2.tool