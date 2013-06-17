class Person
	def initialize(name)
		@name = name
	end

	def name
		@name
	end

	def method1
		"Hello"
	end

	def method2
		"World"
	end
end

class Doctor < Person
	def name
		"Dr. " + super #super is a method that looks up the inheritance chain for the same name of the method and returns what that method returns
	end

	def method1
		"Aloha"
	end
end

marko = Doctor.new("marko")
puts marko.name

puts marko.method1 #Here we can see that the object is calling its own method1 (there is also a method1 in the parent class)
puts marko.method2 #Meanwhile, here it calls the method2 from the parent class, because the Doctor class doesnt have any method named method2