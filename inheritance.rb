class Pet
	attr_accessor :name, :age, :gender, :color
end

class Dog < Pet
end

class Cat < Pet
end

class Snake < Pet
	attr_accessor :length
end

snake = Snake.new
snake.name = "Bob"
snake.length = 15

dog = Dog.new
dog.name = "Balto"
puts "Snake: " + snake.name + " " + snake.length.to_s
puts "Dog: " + dog.name
#everything works till here
dog.length = 15
