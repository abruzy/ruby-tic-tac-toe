require_relative '../lib/board.rb'

puts "Enter your name"
name = gets.chomp.capitalize

puts "What tools would you like to choose, 'X' or 'O'?"
tool = gets.chomp.upcase
until tool=='X' || tool=='O'
    puts "Please pick either 'X' or 'O'"
    tool = gets.chomp.upcase
end

player1 = Player.new(name, tool)

puts "Next player, please enter your name"
name2 = gets.chomp.capitalize
until name2!=name
    puts "Please pick another name,that name is taken"
    name2 = gets.chomp.upcase
end

tool2 = tool=='X'? "O" : "X"

player2 = Player.new(name2, tool2)
Game.display
