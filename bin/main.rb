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
i=0
while i<9
    i+=1
puts "#{player1.name}, please pick a position for your move"
move1=gets.chomp.to_i
Game.play(move1,tool)
Game.display
puts "#{player2.name}, please pick a position for your move"
move2=gets.chomp.to_i
Game.play(move2,tool2)
Game.display
end
