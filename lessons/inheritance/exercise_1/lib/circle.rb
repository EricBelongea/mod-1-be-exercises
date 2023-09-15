class Circle
  attr_reader :color, :radius

  def initialize(color, radius)
    @color = color
    @radius = radius
  end

  def circumference
    (2 * (3.14 * @radius))
  end
end