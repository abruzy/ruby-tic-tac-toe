#!/usr/bin/env ruby
# frozen_string_literal: true

puts 'You are welcome to this TIC-TAC-TOE game'
puts 'Please state your name'
Player1 = gets.chomp.capitalize
puts "#{Player1},PLease pick your preferred letter,X or O"
tool1 = gets.chomp.upcase
tool2 = tool1 == 'X' ? 'O' : 'X'
puts 'Second player,please state your name'
Player2 = gets.chomp.capitalize
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
 if arr.include? position1
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
  puts 'That position is occupied,pls re-pick' if arr.include? position2
    end
    arr << position1
