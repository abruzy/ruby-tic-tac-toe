# frozen_string_literal: true

class Player
  attr_accessor :name
  attr_reader :tool

  def initialize(name, tool)
    @name = name
    @tool = tool
  end
end
