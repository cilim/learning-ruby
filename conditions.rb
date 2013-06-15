#In here we can see how Ruby simplifies the use of conditions



age = 14

if (age == 14)
	puts "you are 14 years old"
end

#this is exactly the same as this

puts "you are 14 years old" if age == 14

#Now to see more complex conditions

puts "You are between 10 and 20" if age > 10 && age < 20

#is the same as

puts "You are between 10 and 20" if age.between?(10, 20)

#there is also the unless condition

puts "You are younger than 10" unless age >= 10

age = 5

puts "You are younger than 10" unless age >= 10

#Comparison to see which is greater than which

x = 10

y = 20

if (x <=> y) == 0
	puts "They are the same"
elsif (x <=> y) == 1
	puts "X is greater"
else #if the second number is greater it returns -1
	puts "y is greater"
end