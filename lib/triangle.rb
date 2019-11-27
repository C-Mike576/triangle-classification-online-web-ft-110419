class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @err_test = [@side1, @side2, @side3]
  end

  def kind
    if @err_test.any? {|side| side == 0}
      raise TriangleError
    elsif @err_test.any? {|side| side < 0}
      raise TriangleError
    elsif @side1 + @side2 <= @side3
      raise TriangleError  
    elsif @side2 + @side3 <= @side1
      raise TriangleError
    elsif @side1 + @side3 <= @side2
      raise TriangleError
    else



      if @side1 == @side2 && @side1 == @side3
        return "equilateral".to_sym
      elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        return "isosceles".to_sym
      else 
        return "scalene".to_sym
      end
    end
  end
  class TriangleError < StandardError
    
  end


end
