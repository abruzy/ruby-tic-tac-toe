board = [0,' ', ' ', ' ', ' ', ' ', ' ',' ', ' ', ' ']

def dispplay_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-------------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-------------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input(user_input)
  user_input.to_i - 1
end

class Player
  attr_accessor :name
  attr_reader :tool

  def initialize(name, tool)
    @name = name
    @tool = tool
  end
end
