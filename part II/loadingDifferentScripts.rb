#Nice method of loading (requiring) different scripts is:

callA = './a'
callB = './b'

call = callA

require call == callA  ? callA : callB

#the working directory is no longer in the Ruby path in Ruby 1.9.2.
#Thats the reason why require 'a' didnt work. You have to add './' before the name of the script you want to call
