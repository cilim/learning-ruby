#Interpolation is a method of inserting expressions
#into string literals

#For example:

x=20
y=30

puts x.to_s + " + " + y.to_s + " = " + (x+y).to_s

#gives the exact same output as

puts "#{x} + #{y} = #{x+y}"

#or you could use

cat = "cat"

puts "The #{cat} is in the hat"

miau = "miau "

puts "The #{cat} says #{miau*5 } when she's hungry"