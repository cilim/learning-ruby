class String
	def titleize
		self.gsub(/(\A|\s)\w/) {|letter| letter.upcase} #\A is start of string, | is or, \s is whitespace, \w is any character. Translated, take every letter if it is the starting character of a string, or if it has a whitespace before the character and upcase it
	end
end

text = "this is a test"
#we want this to be This Is A Test

puts text.titleize

raise "Fail 1" unless text.titleize == "This Is A Test"
raise "Fail 2" unless "another test1234".titleize == "Another Test1234"
raise "Fail 3" unless "We're testing titleize".titleize == "We're Testing Titleize"
