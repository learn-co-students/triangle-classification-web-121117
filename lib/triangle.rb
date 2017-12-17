class Triangle
  # write code here

  attr_accessor :side_one, :side_two, :side_three

    def initialize(side_one ,side_two, side_three)
      @side_one = side_one
      @side_two = side_two
      @side_three = side_three
    end

    def kind
      sides = [@side_one, @side_two, @side_three].sort
      if sides.any? {|side| side <= 0 } || sides[0..1].reduce(:+) <= sides[2]
        raise TriangleError
      elsif sides.uniq.count == 1
        :equilateral
      elsif sides.uniq.count == 2
        :isosceles
      elsif sides.uniq.count == 3
        :scalene
      end
    end
end

class TriangleError < StandardError

end
