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

class Result
  def self.check1(arr)
    i = 1
    loop do
      return arr[i] if arr[i] == arr[i + 1] && arr[i] == arr[i + 2]

      i += 3
      break if i > 7
    end
  end

  def self.check2(arr)
    return arr[1] if arr[1] == arr[5] && arr[1] == arr[9]
    return arr[3] if arr[3] == arr[5] && arr[7] == arr[3]
  end

  def self.check3(arr)
    (1..3).each do |i|
      return arr[i] if arr[i] == arr[i + 3] && arr[i] == arr[i + 6]
    end
  end
end
