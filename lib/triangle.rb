class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    # if @side1 == 0 && @side2 == 0 && @side 3 == 0
    #   raise TriangleError
    # end
  end

  def kind
    if @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      #:scalene
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
