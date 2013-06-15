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

human1 = Human.new('Marko', 25)
puts human1.name
