require 'pry'

class Triangle

  attr_reader :a, :b, :c

  attr_accessor :scalene, :isosceles, :equilateral

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a < 0 || b < 0 || c < 0
      raise TriangleError
    end

    if a == 0 && b == 0 && c == 0
      raise TriangleError
    end

    if (a + b) <= c || (b + c) <= a || (a + c) <= b
      raise TriangleError
    end

      return :equilateral if a == b && b == c
      return :isosceles if a == b || b == c || a == c
      :scalene
    end

end

class TriangleError < StandardError

end
