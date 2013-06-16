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
