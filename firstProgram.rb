print "Please enter a date in format yyyy-mm-dd: "
date = gets

if date.match(/[1-2][0-9][0-9][0-9]-\d\d-\d\d/)
	puts "The date is correct"
else 
	puts "The date is incorrect"
end