load 'string_extensions.rb'

puts "This is a test".vowels.join('-')

#you can also use require instead of load (NOT include...its not working with include)
#if using require, you dont need the .rb extension, but if you use load, then you need it
