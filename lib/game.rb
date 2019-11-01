# frozen_string_literal: true

class Game
  attr_reader :board
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def play(position, tool)
    @position = position
    @tool = tool
    @board[@position - 1] = @tool
  end
end
