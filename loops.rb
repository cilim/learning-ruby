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

1.upto(5) {
	|i|
	puts "Number " + i.to_s + " is even" if i%2 == 0
}

#use this

1.upto(5) do
	|i|
	puts "Number " + i.to_s + " is even" if i%2 == 0
end