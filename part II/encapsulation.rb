#private, public and protected
#private denies access to everything outside the scope of the class
#public allows access to any methods outside and inside the scope
#protected makes a method private but within the scope of the class rather than within a single object

class Person
	def initialize(name)
		set_name(name)
	end

	def name
		@first_name + " " + @last_name
	end

	private #if we put this, we cant access methods below and the code will not work
	
	def set_name(name)
		first_name, last_name = name.split(/\s+/)
		set_first_name(first_name)
		set_last_name(last_name)
	end


	def set_first_name(first_name)
		@first_name = first_name
	end

	def set_last_name(last_name)
		@last_name = last_name
	end

end

marko = Person.new("Marko Cilimkovic")
puts marko.name
#marko.set_last_name("Gospodin") #We could access this method if line 15 were to be removed
puts marko.name
