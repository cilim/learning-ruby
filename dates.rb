puts Time.now.to_s + " is the current time"

#you can add or subtract time from the current time or any time that you have (done in seconds)

puts Time.now - 86400 #1 day less
puts Time.now + 86400 #1 day more

#some programmers adjust the Fixnum class so they could do this

class Fixnum
	def seconds
		self
	end
	def minutes
		self*60
	end
	def hours
		self*60*60
	end
	def days
		self*60*60*24
	end
end

puts Time.now
puts Time.now - 60.seconds
puts Time.now - 5.minutes
puts Time.now - 9.hours
puts Time.now - 365.days