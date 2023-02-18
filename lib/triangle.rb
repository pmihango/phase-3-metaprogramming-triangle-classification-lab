class Triangle
  class TriangleError < StandardError
  end
  
  def initialize(side_x, side_y, side_z)
    @side_x = side_x
    @side_y = side_y
    @side_z = side_z
  end
  
  def kind
    # Check if the triangle is valid
    if @side_x <= 0 || @side_y <= 0 || @side_z <= 0 || (@side_x + @side_y <= @side_z) || (@side_y + @side_z <= @side_x) || (@side_z + @side_x <= @side_y)
      raise TriangleError.new("It is not a valid triangle")
    end
    
    # Determine the kind of triangle
    if @side_x == @side_y && @side_y == @side_z
      return :equilateral
    elsif @side_x == @side_y || @side_x == @side_z || @side_y == @side_z
      return :isosceles
    else
      return :scalene
    end
  end
end