class Triangle
  
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    sides = [@length_one, @length_two, @length_three].uniq
    type = case sides.length
      when 1 then :equilateral
      when 2 then :isosceles
      when 3 then :scalene
      when 0 
        begin
        raise TriangleError
        puts error.message
        end
    end

  end

  class TriangleError < StandardError
    def message
    end
  end

end
