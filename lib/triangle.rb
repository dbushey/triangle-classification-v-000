class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end

  end

  def valid_triangle
  sides = [@side1, @side2, @side1]
  raise TriangleError if sides.any? { |side| side == 0 }

  sides.inject(:+) - sides.max > sides.max ? true : false
  end

  valid_triangle

  class TriangleError < StandardError

  end
end
