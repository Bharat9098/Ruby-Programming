class Shape
  def draw
    puts "In Instance of #{self.class}"
  end
end

class Square < Shape
end

class Circle <Shape
end

class ShapeFactory
  def get_shape shape_type
    case shape_type
    when :square then Square.new
    when :circle then Circle.new
    end
  end
end

sp = ShapeFactory.new
sq = sp.get_shape :square
circle = sp.get_shape :circle

sq.draw
circle.draw