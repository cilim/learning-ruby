text = File.readlines(ARGV[0])
languages = text.join.split(/\n/)

languages.each {|language| puts "Language." + language.upcase.to_s + "=" + language}