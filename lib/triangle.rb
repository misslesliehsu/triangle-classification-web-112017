require 'pry'

class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize(num1, num2, num3)
    @length_1 = num1
    @length_2 = num2
    @length_3 = num3
  end

  def kind
    array = [@length_1, @length_2, @length_3]
    sorted = array.sort
    if array.any? do |x| x <=0 end
      begin
        raise TriangleError
      end
    elsif sorted[2] >= (sorted[0] + sorted[1])
      begin
        raise TriangleError
      end
    elsif sorted[0] == sorted[1] && sorted[1] == sorted[2]
      :equilateral
    elsif sorted[0] == sorted[1] || sorted[1] == sorted[2]
      :isosceles
    else
      :scalene
    end
  end
end

  class TriangleError < StandardError
    def message
      "Nope!"
    end
  end
