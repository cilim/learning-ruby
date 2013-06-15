#in Ruby a constant is defined by capitalizing the first letter, so

Pi = 3.14

puts Pi

Pi = 5

puts Pi

#it works, but there is a warning message

#Respect the Ruby syntax because in the future Ruby might enforce tighter control over constants


#If you want to put out a string you do it like this

puts "this is a one lined string"

#but if you want more than one line you have to do it like this

puts %q{
	There are
	more
	lines here
}

#You can use which ever delimeter you want instead of {}...like (), or <>, or create your own

x = <<MYDELIMETER
Aloha
Alohaaloha
Alohaaloha
MYDELIMETER


puts x


#You can get ASCII values and vice versa

puts 120.chr

puts ?x.ord