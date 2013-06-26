class String
	def titleize
		self.gsub(/(\A|\s)\w/) {|letter| letter.upcase} 
	end
end

require 'test/unit'

class TestTitleize < Test::Unit::TestCase
	def test_basic
		assert_equal("This Is A Test", "this is a test".titleize)
		assert_equal("This Is A Test 123", "this is a test 123".titleize)
		assert_equal("This Is A Test", "This is a test".titleize)
	end
end

#to run this you need to sudo gem install test-unit