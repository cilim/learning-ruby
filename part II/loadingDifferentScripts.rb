#Nice method of loading (requiring) different scripts is:

call = "a.rb"
call = "b.rb" #this is going to get called

load call == "a.rb"  ? "a.rb" : "b.rb"