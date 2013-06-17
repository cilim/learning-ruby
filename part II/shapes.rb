class Shape
end

class Square < Shape
	def initialize(side_length)
		@side_length = side_length
	end

	def area
		@side_length * @side_length
	end
end


x = Square.new(5)
y = Square.new(10)

puts x.area
puts y.area