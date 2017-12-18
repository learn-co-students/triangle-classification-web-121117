
require "pry"

class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    case
    when a == 0 && b == 0 && c == 0
      raise TriangleError
    when a < 0 || b < 0 || c < 0
      raise TriangleError
    when !(a+b>c && a+c>b && b+c>a)
      raise TriangleError
    end
  end

  def kind
    case
    when @a==@b && @a==@c && @b==@c
      return :equilateral
    when @a==@b || @a==@c || @b==@c
      return :isosceles
    when @a!=@b && @a!=@c && @b!=@c
      return :scalene
    end
  end
end


class TriangleError < StandardError
  def message
    "the triangle is wrong"
  end

end
