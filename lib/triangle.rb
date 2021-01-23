class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    if  a + b <= c || a + c <= b || c + b <= a
      raise TriangleError
    elsif a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif  a == nil || b == nil  || c == nil
      raise TriangleError
    end

    @a = a
    @b = b
    @c = c

  end

  def kind
    if self.a == self.b && self.b == self.c
      return :equilateral
    elsif self.a == self.b || self.a == self.c || self.b == self.c
      return :isosceles
    else 
      return :scalene
    end
  end

  class TriangleError < StandardError
    # def message
    #   puts "This is not valid triangle!"
    # end
  end

end


# if a + b < + c
    #   raise TriangleError
    # end

    # if a <= 0 || b <= 0 || c <= 0
    #   raise TriangleError
    # end
    
    # if a == nil || b == nil || c == nil
    #   raise TriangleError
    # end