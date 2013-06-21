load 'string_extensions.rb'

puts "This is a test".vowels.join('-')

#you can also use require instead of load (NOT include...its not working with include)
#if using require, you dont need the .rb extension, but if you use load, then you need it

#IMPORTANT: when including a file load always processes the code upon including it. require doesnt do that

#for example
puts "Example for loading scripts"
load 'a.rb' #the content of a.rb gets written here
puts "World"
load 'a.rb' #the content of a.rb gets written here

#if you used require, hello would be output only the first time

#example with b
puts "Example for requiring scripts"
puts "Hello"
require './b'
require './b' #the content of b.rb gets written only once
