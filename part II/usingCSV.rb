require 'csv'


#open doesnt work as the book said. Have to use foreach
CSV.foreach('csvdatabase.csv', 'r') do |person|
	puts person.inspect
end

#or

people = CSV.parse(File.read('csvdatabase.csv'))
puts people[0][0]

#or

puts CSV.read('csvdatabase.csv').inspect


#finding a person

people = CSV.read('csvdatabase.csv')

laura = people.find { |person| person[0] =~ /Laura/ }
puts laura.inspect

#this only returns the first occurence of Laura, but what if theres more Lauras, or if you want more people

#for example ages between 20, 40

young_people = people.find_all do |p|
	p[3].to_i.between?(20,40)
end
puts young_people.inspect



#better than CSV is PStore, but I'll rather focus on databases like mysql or postresql so I wont be researching PStore too deeply