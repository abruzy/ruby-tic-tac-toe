require_relative '../lib/board.rb'

puts "Enter your name"
name = gets.chomp

puts "What tools would you like to choose"
tool = gets.chomp

player1 = Player.new(name, tool)
puts player1.name

puts player1.tool
