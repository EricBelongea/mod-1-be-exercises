class Rectangle
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
    (2 * (@length + @width))
  end

  # this class should have the following properties:
  # - color
  # - length
  # - width

  #It should have the following methods:
  # - area (width * length)
  # - perimeter (2 * (length + width))

end