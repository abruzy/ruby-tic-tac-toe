#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/player.rb'
require_relative '../lib/game.rb'
require_relative '../lib/result.rb'

module Umpire
    def self.display(arr)
        line_width = 50
     puts "#{arr[0]} | #{arr[1]} | #{arr[2]} ".center line_width
     puts "#{arr[3]} | #{arr[4]} | #{arr[5]} ".center line_width
     puts "#{arr[6]} | #{arr[7]} | #{arr[8]} ".center line_width
    end
end

$arr=[]
$arr1=[]
player_turn=Game.new

def name1
puts "Enter your name"
name1 = gets.chomp.capitalize
$arr << name1
return name1
end

def tool1
puts "What tools would you like to choose, 'X' or 'O'?"
tool1 = gets.chomp.upcase
until tool1=='X' || tool1=='O'
    puts "Please pick either 'X' or 'O'"
    tool1 = gets.chomp.upcase
end
$arr << tool1
return tool1
end

def create_player(player1,name1,tool1)
player1= Player.new(name1,tool1)
return player1
end

def name2
puts "Next player, please enter your name"
name2 = gets.chomp.capitalize
until !$arr.include? (name2)
    puts "Please pick another name,that name is taken"
    name2 = gets.chomp.upcase
end
return name2
end

def tool2
tool2 = $arr.include?('X')? "O" : "X"
$arr << tool2
return tool2
end

def action(player1)
  puts "#{player1.name}, please pick a position for your move"
    move1=gets.chomp.to_i
  until player_turn.valid_move(move1,$arr)
    puts 'Please pick a number between 0 and 10 that has not been picked before?'
    move1 = gets.chomp.to_i
  end
  $arr << move1
  return move1
end

def check(board,player1)
  if Result.check1(board)==player1.tool
    puts "#{player1.name} is the winner of this round"
    puts "#{player1.name}'s tool '#{player1.tool}' is aligned horizontally"
    return true
  end
if Result.check2(board)==player1.tool
  puts "#{player1.name} is the winner of this round"
  puts "#{player1.name}'s tool '#{player1.tool}' is aligned diagonally"
  return true
end
if Result.check3(board)==player1.tool
puts "#{player1.name} is the winner of this round"
puts "#{player1.name}'s tool '#{player1.tool}' is aligned vertically"
return true
end
return false
end

player1=create_player('player1',name1,tool1)
player2=create_player('player2',name2,tool2)


i=0

while i<9
  
  i+=1
  move1=action(player1)
  player_turn.play(move1,$arr[1])
  Umpire.display(player_turn.board)
  break if GameOver.check(player_turn.board,player1)
   
  
    if i==9
      puts "Game over and there is no winner"
      break
    end

    
    i+=1
    move2=action(player2)

  player_turn.play(move2,$arr[2])
  Umpire.display(player_turn.board)
  break if check(player_turn.board,player2)
end


