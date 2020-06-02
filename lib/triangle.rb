class Triangle
  # write code here
  @@all = []
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @@all << self 
  end
  def kind 
    if valid? 
      if @side1 == @side2 || @side1 == @side3
        if @side1 == @side3
          "equilateral"
        else 
          "isosceles"
      else
        "scalene"
    else raise TriangleError
      end
    end
  end
    
  def valid?
    if (@side1 + @side2 > @side3) && (@side1 + @side3 > @side2) && (@side3 + @side2 > @side1)
  end
  
 class TriangleError < StandardError
  end
end
