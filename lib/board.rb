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
  attr_accessor :board
  def initialize 
    @board = [0,' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  

  def play(position, tool)
    @position = position
    @tool = tool
    @board[@position] = @tool
  end
end
