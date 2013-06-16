print "Please enter a date in format yyyy-mm-dd: "
date = gets

if date.match(/\d+-\d+-\d+/)
	errors = 0
	year = (date[0] + date[1] + date[2] + date[3]).to_i
	month = (date[5] + date[6]).to_i
	day = (date[8] + date[9]).to_i
	errors+=1 unless year.between?(1900, 2020)
	errors+=1 unless month.between?(1, 12)
	errors+=1 unless day.between?(1, 31)
	#If you dont want to change the regexp, then you should iterate through an array of days here and check wether the day is in the correct range depending on the submited month
	puts "The date is correct" if errors == 0
	puts "The date is incorrect" unless errors == 0
else 
	puts "The date is incorrect"
end

#The days are not checked well enough, but judging by the current level or Ruby knowledge, this is enough
