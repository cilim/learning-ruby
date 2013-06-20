class String
	def vowels
		self.scan(/[aeiou]/i) #i on the end makes the string case insensitive
	end
end