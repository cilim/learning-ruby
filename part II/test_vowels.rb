load 'string_extensions.rb'

puts "This is a test".vowels.join('-')

#you can also use require instead of load (NOT include...its not working with include)
#if using require, you dont need the .rb extension, but if you use load, then you need it

#IMPORTANT: when including a file load always processes the code upon including it. require doesnt do that

#for example
#a.rb outputs Hello
#you are in b.rb which outputs World
#load a.rb
#puts "World"
#load a.rb
#output: hello world hello

#if you used require, hello would be output only the first time