require 'shape'

class Rectangle < Shape
  attr_reader :color, :width, :length

  def initialize(color, length, width)
    @color = color
    @length = length
    @width = width
  end
end