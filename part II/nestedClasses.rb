class Drawing
	def give_me_a_circle
		Circle.new
	end

	class Line
	end

	class Circle
		def what_am_i
			"This is a circle"
		end
	end
end

circle = Drawing.new.give_me_a_circle
puts circle.what_am_i
circle2 = Drawing::Circle.new
puts circle2.what_am_i
circle3 = Circle.new
puts circle3.what_am_i