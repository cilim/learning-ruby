class Animal
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

class Dog < Animal
	def talk
		"Woof"
	end
end

class Cat < Animal
	def talk
		"Mijau"
	end
end

animals = [Dog.new("Freddy"), Cat.new("George"), Dog.new("Pete")]

animals.each do |animal|
	puts animal.name + " " + animal.talk #every object calls a method of the same name but the output depends on the class it is created on
end