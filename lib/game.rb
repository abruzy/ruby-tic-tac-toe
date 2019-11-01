# frozen_string_literal: true

class Game
  attr_reader :board
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @arr = []
  end

  def play(position, tool)
    @position = position
    @tool = tool
    @board[@position - 1] = @tool
  end

  def valid_move(num, arr)
    return true if num < 10 && num.positive? && !arr.include?(num)

    false
  end
end
