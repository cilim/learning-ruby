class Person
	attr_accessor :name
	def initialize(name)
		raise ArgumentError, "No name provided" if name.empty? #this is how to use a predefined exception
		@name = name
	end
end

#person = Person.new("Marko")
#puts person.name
#person2 = Person.new('')
#everything above is commented because the code below wont work because there are exception errors so the program stops executing itself

#you can also create your own exception class

class BadDataException < RuntimeError
end

class Animal
	def initialize(name)
		raise BadDataException, "There is no name in the object" if name.empty?
	end
end

animal = Animal.new("")