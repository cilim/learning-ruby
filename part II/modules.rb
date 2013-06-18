#If you have two methods of the same name, there can be clashes so its best to use modules

module ToolBox
	class Ruler
		attr_accessor :length
	end
end

module Country
	class Ruler
		attr_accessor :name
	end
end

a =ToolBox::Ruler.new
a.length = 20
b = Country::Ruler.new
b.name = "Elisabeth"

puts a.length
puts b.name