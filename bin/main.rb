#!/usr/bin/env ruby
# frozen_string_literal: true

puts 'You are welcome to this TIC-TAC-TOE game'
puts 'Please state your name'
Player1 = gets.chomp.capitalize
puts "#{Player1},PLease pick your preferred letter,X or O"
tool1 = gets.chomp.upcase
until tool1=="X" || tool1=="O"
  puts "Please,pick either 'X' or 'O'?"
  tool1=gets.chomp.upcase
end
tool2 = tool1 == 'X' ? 'O' : 'X'
puts 'Second player,please state your name'
Player2 = gets.chomp.capitalize
until Player2!=Player1
  puts "That name has been taken,please pick another name"
  Player2=gets.chomp.capitalize
end
puts ""
puts "#{Player2},The first player chose '#{tool1}',so you are stuck with '#{tool2}' for this round"
puts ''
puts "Now that's out of the way,let the game begin"
puts ''
position1 = 10
arr = []
while (position1 < 1 || position1 > 9) && !arr.include?(position1)
  puts "#{Player1}, What position would you like to make your move?, PLease pick a number between 0 and 10"
  position1 = gets.chomp.to_i
  until !arr.include? position1
    puts "That position is occupied,pls re-pick?"
    position1 = gets.chomp.to_i
   end
 end

arr << position1
puts "Now your move with '#{tool1}' is displayed on the board"
puts ''
position2 = 10
while (position2 < 1 || position2 > 9) && !arr.include?(position2)
  puts "#{Player2}, What position would you like to make your move?, PLease pick a number between 0 and 10"
  position2 = gets.chomp.to_i
  until !arr.include? position2
    puts "That position is occupied,pls re-pick?"
    position2 = gets.chomp.to_i
   end
    end
    arr << position2
    puts "Now your move with '#{tool2}' is displayed on the board"
puts ''
puts 'After several turns and winner emerges based on having the same letter appear horizontally,vertically,or diagonally,
,winner is announced and if there is no winner,it is stated'

