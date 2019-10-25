#!/usr/bin/env ruby
puts 'You are welcome to this TIC-TAC-TOE game'
puts 'Please state your name'
Player1 = gets.chomp.capitalize 
puts "#{Player1},PLease pick your preferred letter,X or O"
tool1 = gets.chomp.upcase
tool2 = tool1 == 'X' ? 'O' : 'X'
puts 'Second player,please state your name'
