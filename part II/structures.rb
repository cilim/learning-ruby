#Small data-handling classes that contain data but no methods

Person = Struct.new(:name, :age)
dummy = Person.new("Marko", 35)
dummy.age += 1
puts dummy.age

#you can use structures with the openstruct module (gem) which is more easy, but the code gets harder to read


require 'ostruct'

animal = OpenStruct.new
animal.name = "Fred"
animal.age = 23
animal.size = "HUGE"
puts animal.name
puts animal.age
puts animal.size