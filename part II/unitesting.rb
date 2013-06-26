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

#	 assert(<boolean expression>): Passes only if the Boolean expression isn’t false or nil
#(for example, assert 2 == 1 will always fail).
#	 assert_equal(expected, actual): Passes only if the expected and actual values are
#equal (as compared with the == operator). assert_equal('A', 'a'.upcase) will pass.
#	 assert_not_equal(expected, actual): The opposite of assert_equal. This test will fail
#if the expected and actual values are equal.
#	 assert_raise(exception_type, ..) { <code block> }: Passes only if the code block
#following the assertion raises an exception of the type(s) passed as arguments.
#assert_raise (ZeroDivisionError) { 2 / 0 } will pass.
#	 assert_nothing_raised(exception_type, ..) { }: The opposite of assert_raise.
#Passes only if none of the exceptions listed are raised.
#	 assert_instance_of(class_expected, object): Passes only if object is of class
#class_expected.
#	 flunk: flunk is a special type of assertion in that it will always fail. It’s useful if you
#haven’t quite finished writing your tests and you want to add a strong reminder that
#your test case isn’t complete!
