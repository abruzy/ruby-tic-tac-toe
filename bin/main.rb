#!/usr/bin/env ruby
puts 'You are welcome to this TIC-TAC-TOE game'
puts 'Please state your name'
Player1 = gets.chomp.capitalize 
puts "#{Player1},PLease pick your preferred letter,X or O"
tool1 = gets.chomp.upcase
tool2 = tool1 == 'X' ? 'O' : 'X'
puts 'Second player,please state your name'
Player2 = gets.chomp.capitalize
puts "The first player chose '#{tool1}',so you are stuck with '#{tool2}' for this round"
puts ''
puts "Now that's out of the way,let the game begin"
puts ''
position=10
while position<1 || position>9
puts "#{Player1}, What position would you like to make your move?, PLease pick a number between 0 and 10"
position1 = gets.chomp
end