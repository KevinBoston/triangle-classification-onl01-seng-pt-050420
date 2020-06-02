class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    sides = []
    sides << side1, side2, side3
  end
  
  def kind 
    valid? ? name_triangle : raise TriangleError 
      
  end
  def name_triangle
    if @side1 == @side2 || @side1 == @side3
      if @side2 == @side3
        "equilateral"
      else
        "isoceles"
      end
    else 
      "scalene"
    end
  end
    
  def valid?
    if (@side1 + @side2 > @side3) && (@side1 + @side3 > @side2) && (@side3 + @side2 > @side1)
  end
  end
  
 class TriangleError < StandardError
  end
end
