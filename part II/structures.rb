#Small data-handling classes that contain data but no methods

Person = Struct.new(:name, :age)
dummy = Person.new("Marko", 35)
dummy.age += 1
puts dummy.age