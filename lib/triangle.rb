class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    sides = []
    sides << side1, side2, side3
    if sides.include?(0) raise TriangleError
  end
  
  def kind 
    valid? ? name_triangle : raise TriangleError     
  end
  
  def name_triangle
    if @side1 == @side2 && @side1 == @side3 && @side2 == @side3
     "equilateral"
     elsif @side1 == @side2 && @side1 == @side3 && @side2 != @side3
        "isoceles"
     else 
      "scalene"
     end
  end
    
  def valid?
    (@side1 + @side2 > @side3) && (@side1 + @side3 > @side2) && (@side3 + @side2 > @side1)
  end
  
 class TriangleError < StandardError
  end
end
