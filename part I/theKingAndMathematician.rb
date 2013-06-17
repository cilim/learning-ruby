#Once there was a king and a mathematician.
#The king felt bored, so the mathematician invented chess
#The king was so satisfied that he offered the mathematician anything he wanted
#The mathematician wanted 1 rice grain on the 1st square, 2 on the second, 4 on the third and so on
#How many rice grains should the mathematician get?

grainsOfRice = 1
square = 1
64.times do |square|
	puts "Square #{square + 1} contains #{grainsOfRice} grain of rice. ->" + grainsOfRice.class.to_s
	grainsOfRice = grainsOfRice*2
end

#The king couldn't fulfill his promisse
