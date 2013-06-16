#ternary operator - really usefull stuff if you like your code looking smaller and easier to read

puts "Please enter your age: "
age = gets

puts "You are " + (age.to_i < 18 ? "a child" : "an adult")

#Now for the if/elsif/else flow controls

fruit = "banana"

if fruit == "orange"
	color = "orange"
elsif fruit == "banana"
	color = "yellow"
elsif fruit == "kivi"
	color = "green"
else
	color = "unknown"
end

puts color

#look at how more understandable this is

fruit = "kivi"
case fruit
	when "orange"
		color = "orange"
	when "banana"
		color ="yellow"
	when "kivi"
		color = "green"
	else
		color = "unknown"
end

puts color

#OR EVEN THIS BOOOMSHAKALAKA XD

fruit = "orange"
color = case fruit
when "orange"
	"orange"
when "banana"
	"banana"
when "kivi"
	"green"
else
	"unknown"
end

puts color


#In Ruby, it's possible to store whole code blocks with the lambda method

double_it = lambda {|x| return x*2}

a = 5

b = double_it.call(5)
puts b

#Ranges!
#in ruby its possible to set ranges, for example, in an array and do stuff with them

array = [1,2,3,4,5,6,7,8,9]

p array[1..6]

array[1..3] = ["a", "b", "c"]

p array


#so you can improve the standard include? method
puts array.include?("a")

#like this, if you need only to check a range in an array

puts array[3..6].include?("a")