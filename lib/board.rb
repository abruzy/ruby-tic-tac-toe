# frozen_string_literal: true

class Player
  attr_accessor :name
  attr_reader :tool

  def initialize(name, tool)
    @name = name
    @tool = tool
  end
end

class Game
  @board = [' 1', ' 2', ' 3', ' ', ' ', ' ', ' ', ' ', ' ']
  
  def self.display
    line_width = 50
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} " .center line_width
    puts '-------------' .center line_width
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} ".center line_width
    puts '-------------' .center line_width
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} ".center line_width
  end

  def self.play(position, tool)
    @position = position
    @tool = tool
    @board[@position - 1] = @tool
  end
end

