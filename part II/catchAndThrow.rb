def generate_random_number_except_123
	x = rand(1000)
	puts "Number 123 is generated" if x == 123
	throw :finish if x == 123
end


catch (:finish) do
	1000.times {generate_random_number_except_123}
	puts "Generated 1000 numbers without 123"
end
