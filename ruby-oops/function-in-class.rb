class Square
	attr_accessor :side_length

	def area
		side_length * side_length
	end

	def perimiter
		4 * side_length
	end
end

s = Square.new
s.side_length = 5
p "Area is: #{s.area}" # output  --> "Area is: 25"
p "Perimeter is: #{s.perimiter}" # output  --> "Perimeter is: 20"
