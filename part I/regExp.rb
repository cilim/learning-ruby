#First some methods with substituting characters in strings

text = "Hello world"

puts text.sub("l" , "h")

#You could see that only the first occurrence of the letter l is substituted with the letter h

puts text.gsub("l" , "h")

#Now for some regExps

# ^ and $ is an anchor. ^ is used for the beginning of a string and $ is for the end
#reg exps start always with / and end with /
#dots "." mean "any character"
#so, if you want to replace the first two characters of a string with something else you can do

puts "This is a test".sub(/^../, "Hello")

#now replacing two characters on the end

puts "This is a test".sub(/..$/, "world")

#now lets to some iterations

"This is a test".scan(/../) {|x| puts x}

#scan is a method where you provide the regular expression you want in the string
#. is any character and \w is any character or digit

"This is a test".scan(/\w\w/) do |x|
	puts x
end

#Some other reg exps are here
#\W anything that \w doesnt match
#\d any digit, \D anything that \d doesnt match
#\s whitespace and \S non-whitespace

#so, if you want to extract digits from a string then you use \d, but if you want to match as many digits in a row together then you have to add +

"THe car costs $1000 and the cat costs $20".scan(/\d+/) {|x| puts x}

#So, + matches more occurences of the given character
#* Matches zero or more
#*? same but matches as few as possible
#+? same but matches as few as possible
#? match either one or none of the preceding character


#You can do character classes with regular expressions as well
#For example, match all vowels that are lower cased in a string

"All vowels from this string are going to be output".scan(/[aeiou]/) {|x| puts x}

#You can also select ranges

puts "Ranges"

"From this string only letter from d-k are going to be displayed".scan(/[d-k]/) do |x|
	puts x
end

puts "Ranges in numbers are also possible"

puts "1,2,3,4,5,6,7,8,9".scan(/[3-7],/) do |x|
	puts x
end

puts "Now we start using the more important part about regular expressions. A lot of times theres going to be a field in which a user will have to enter some data. Some of those datafields will have to have a specific pattern. If they dont get validated, there is a possibility of not persisting that information in the database"

# a new operator =~

puts "String has vowels" if "This is a test" =~ /[aeiou]/

puts "String has no vowels" unless "This is a test" =~ /[aeiou]/

#There is also a method called match which is more powerfull

x = "This is a test".match(/(\w+) (\w+)/)
puts x.to_s + " \nThe same as: " + x[0]
puts "but, you can call parts of the array: " + x[1]
puts x[2]
puts x[3].to_s + " - empty"
puts x[4].to_s + " - empty"

y= "So if the string has more words like this".match(/(\w+) (\w+) (\w+) (\w+) (\w+) (\w+) (\w+) (\w+) (\w+)/)
0.upto(y.length) do |i|
	puts i.to_s + ": " + y[i].to_s if y[i] != nil
end
