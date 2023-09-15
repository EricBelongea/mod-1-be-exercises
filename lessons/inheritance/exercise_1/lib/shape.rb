class Shape
  attr_reader :color, :width, :length

  def initialize(color, length, width)
    @color = color
    @length = length
    @width = width
  end

  def area
    @width * @length
  end

  def perimeter
    (2 * (width + length))
  end
end