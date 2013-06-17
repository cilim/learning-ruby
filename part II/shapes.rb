class Shape
end

class Square < Shape
	def initialize(side_length)
		@side_length = side_length #@ is a sigil defining an object variable
		if defined?(@@number_of_squares)
			@@number_of_squares += 1 #@@ is a sigil defining a class variable (you can store information in it and return it by calling the class name)
		else
			@@number_of_squares = 1
		end
	end

	def area
		@side_length * @side_length
	end
	def self.count
		@@number_of_squares
	end
	def yay
		$success
	end
end


x = Square.new(5)
y = Square.new(10)
$success = "Success" #$ is a sigil defining a global variable that can be accessed from the whole application, not only scopes it is defined in

puts x.area
puts y.area
puts Square.count
puts x.yay