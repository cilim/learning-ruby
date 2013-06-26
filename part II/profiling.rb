require 'profile'

class Calculator
	def self.count_to_large_num
		x = 0
		10000.times {x += 1}
	end

	def self.count_to_small_num
		x = 0
		1000.times {x += 1}
	end
end

Calculator.count_to_large_num
Calculator.count_to_small_num
