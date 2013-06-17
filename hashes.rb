#arrays with a defined key

peopleAges = {
	"marko" => 23,
	"bruno" => 25,
	"boris" => 25
}

p peopleAges

puts peopleAges['marko']

puts "Keys: " + peopleAges.keys.join(", ")
puts "Values: " + peopleAges.values.join(", ")

peopleAges.each {|key, value| puts "#{key} is #{value} years old"}

#Deleting keys

peopleAges.delete("boris")
p peopleAges

peopleAges.delete_if {|key, value| value<25 }
p peopleAges

#hashes within hashes

people = {
	"marko" => {
		"fullname" => "Marko Cilimkovic",
		"age" => 23,
		"sex" => "yes",
		"parents" => ["Biljana", "Adrijan"]
	},
	"bruno" => {
		"fullname" => "Bruno Busic",
		"age" => 25,
		"sex" => "allthetime"
	},
	"boris" => {
		"fullname" => "Boris Raus",
		"age" => 25,
		"sex" => "ofcourse",
		"smart" => "sure"
	}
}

puts people["marko"]["fullname"]
puts people["marko"]["parents"]
puts people["marko"]["parents"][0]
