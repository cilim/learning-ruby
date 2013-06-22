class Person
	attr_accessor :name, :surname, :age, :gender

	def initialize(name, surname, age, gender)
		@name = name
		@surname = surname
		@age = age
		@gender = gender
	end

	def speak
		puts "Hello everyone. My name is " + @name
	end
end

marko = Person.new("Marko", "Cilimkovic", 23, "M")
bruno = Person.new("Bruno", "Busic", 25, "M")

puts marko.name
puts bruno.name
puts marko.speak
puts bruno.speak

#you can simply create the documentation with running the command: rdoc documentation.rb
#note that you'll probably need to install gem install json_pure