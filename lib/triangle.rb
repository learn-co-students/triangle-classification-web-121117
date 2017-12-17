require 'pry'


class Triangle
  attr_accessor :side_a, :side_b, :side_c, :kind

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end


  def kind
    if (@side_a <= 0 || @side_b <= 0 || @side_c <= 0) || !(@side_a + @side_b > @side_c) || !(@side_a + @side_c > @side_b) || !(@side_c + @side_b > @side_a)
      begin
        raise TriangleError
      end
    else
      side_array = [@side_a, @side_b, @side_c]
      case side_array.uniq.length
      when 1
        @kind = :equilateral
      when 2
        @kind = :isosceles
      when 3
        @kind = :scalene
      end
    end
  end

end

class TriangleError < StandardError
end
