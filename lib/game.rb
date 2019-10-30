# frozen_string_literal: true

class Game
  attr_reader :board
  def initialize
    @board = [0, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def play(position, tool)
    @position = position
    @tool = tool
    @board[@position] = @tool
  end
end
