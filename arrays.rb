#Lets do some array work!

#this is an array

x = []

y = [1, 2, 3, 4]

x << "a"
x << "b"
x.push("c")

puts x

puts x.pop
puts x.pop
puts "Length is now: " + x.length.to_s

puts y
puts "And now a prettier output"
puts y.join(", ")

#Splitting strings into arrays, for example a sentence into words

puts "This is a pretty long sentence that contains a lot of words".split(/\s+/).inspect

puts "In this example we split a whole chapter into sentences. For example, the previous sentence is going to be in the same array but with an other index. As well as this one".split(/\./).inspect

p "The previous example is the same as this one, but here we are splitting parts of a sentences separated with a comma, and we are using an alternative to ispect, and puts".split(/\,/)

#Array addition, subtraction and concatenation

a = [1,2,3,4,5]
b = [1,2,4,5,6]
p a
p b

c = a + b
p c
c = a - b
p c
d = ["a", "b", "c"]
e = c + d
p e

#Checking if array empty or if it contains some element

alpha = []
#Is empty method
puts "Array is empty" if alpha.empty?

alpha << 1
alpha << 3
alpha << 4
alpha << 5
#Contains method == include?("element")
p alpha.include?("x")
p alpha.include?(1)