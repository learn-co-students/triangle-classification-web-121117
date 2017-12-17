class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    triangle_check
    if @side_1 == @side_2 && @side_2 == @side_3
      return :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      return :isosceles
    else
      return :scalene
    end
  end

  def triangle_check
    true_triangle = [(side_1 + side_2 > side_3), (side_1 + side_3 > side_2), (side_2 + side_3 > side_1)]
    [side_1, side_2, side_3].each { |side| true_triangle << false if side <= 0 }
    raise TriangleError if true_triangle.include?(false)
  end
end

class TriangleError < StandardError

end
