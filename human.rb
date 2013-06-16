class Human
	def initialize(name, age)
		@name = name
		@age = age
	end

	def name
		return @name
	end

	def age
		return @age
	end
end

#the next class will be created the Ruby way :)
class Animal
attr_accessor :breed, :age, :name
end
 


human1 = Human.new('Marko', 25)
puts human1.name
animal1 = Animal.new
animal1.breed = "Malamut"
animal1.age = 3
animal1.name = "Balto"
puts animal1.breed
puts animal1.age
puts animal1.name
