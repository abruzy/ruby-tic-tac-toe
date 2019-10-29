#!/usr/bin/env ruby
# frozen_string_literal: true
require_relative '../lib/board.rb'

module Umpire
    def self.display(arr)
        line_width = 50
     puts "#{arr[1]} | #{arr[2]} | #{arr[3]} ".center line_width
     puts "#{arr[4]} | #{arr[5]} | #{arr[6]} ".center line_width
     puts "#{arr[7]} | #{arr[8]} | #{arr[9]} ".center line_width
    end
end

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
player_turn=Game.new
arr=[]
i=0
while i<9
    i+=1
    puts "#{player1.name}, please pick a position for your move"
    move1=gets.chomp.to_i
  until move1 < 10 && move1 > 0 && !arr.include?(move1)
    puts 'Please pick a number between 0 and 10 that has not been picked before?'
    move1 = gets.chomp.to_i
  end
  arr << move1
  
  player_turn.play(move1,tool)
  Umpire.display(player_turn.board)
    if Result.check1(player_turn.board)==player1.tool
        puts "#{player1.name} is the winner of this round"
        puts "#{player1.name}'s tool '#{player1.tool}' is aligned horizontally"
      break
    end
    if Result.check2(player_turn.board)==player1.tool
      puts "#{player1.name} is the winner of this round"
      puts "#{player1.name}'s tool '#{player1.tool}' is aligned diagonally"
    break
    end
  if Result.check3(player_turn.board)==player1.tool
    puts "#{player1.name} is the winner of this round"
    puts "#{player1.name}'s tool '#{player1.tool}' is aligned vertically"
  break
  end
    if i==9
      puts "Game over and there is no winner"
      break
    end
    i+=1
   

  puts "#{player2.name}, please pick a position for your move"
  move2=gets.chomp.to_i
    until move2 < 10 && move2 > 0 && !arr.include?(move2)
      puts 'Please pick a number between 0 and 10 that has not been picked before?'
      move2 = gets.chomp.to_i
     
    end

    arr << move2

  player_turn.play(move2,tool2)
  Umpire.display(player_turn.board)
    if Result.check1(player_turn.board)==player2.tool
       puts "#{player2.name} is the winner of this round"
       puts "#{player2.name}'s tool '#{player2.tool}' is aligned horizontally"
     break
    end
    if Result.check2(player_turn.board)==player2.tool
      puts "#{player2.name} is the winner of this round"
      puts "#{player2.name}'s tool '#{player2.tool}' is aligned diagonally"
    break
    end
  if Result.check3(player_turn.board)==player2.tool
    puts "#{player2.name} is the winner of this round"
    puts "#{player2.name}'s tool '#{player2.tool}' is aligned vertically"
  break
  end
  
end

