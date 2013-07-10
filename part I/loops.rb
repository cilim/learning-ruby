#the c way for loops is

#for (i=1; i<5; i++) {
	#printf (i)	
#}

#The Ruby way is

1.upto(5) {|i| puts i}

#or

5.downto(1) {|i| puts i}

#or

1.step(5, 1) {|i| puts i}

#When having multiple lines of code in the loop use do and end instead of { and } so instead of this
#Why? Because Ruby is known not only to be one of the most OO languages, but also because Ruby tends to feel
#English like. You read the code and you immediately understand most of it (should)

1.upto(5) {
	|i|
	puts "Number " + i.to_s + " is even" if i%2 == 0
}

#use this

1.upto(5) do
	|i|
	puts "Number " + i.to_s + " is even" if i%2 == 0
end

#do-while in Ruby

response = 'n'
begin
	puts "You're in the program"
	response = gets
	puts response
end while gets == 'y'