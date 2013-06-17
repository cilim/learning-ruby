#Iterating through arrays is a must!!

a = [1, 2, 3, 4, 5]

a.each {|x| puts x}

#You can use collect or map for iterating through an array and immediately assigning another result to that element

a.collect {|x| x*2}

#Very usefull for creating new arrays immediately like this

b = a.collect {|x| x*2}

#and not like this
c = []
a.each do |x|
	c << x*2
end

puts "Collect way:"
puts b
puts "Each way with pushing element to the array"
puts c

#so, basically we did the same thing, but in a more fancier and quicker way :)