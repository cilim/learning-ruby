stopWords = %w{the a by on for of are with just but and to the my in I has some}
text = %q{Los angeles has some of the nicest weather in the country}




keywords = []
text.scan(/\w+/) {|x| keywords << x unless stopWords.include?(x)}
puts keywords.join(",")

#or this way

words = text.scan(/\w+/)
keywords2 = words.select {|word| !stopWords.include?(word)}

puts keywords2.join(',')


puts "Percentage of important words in the text is " + (((keywords2.length.to_f / words.length.to_f) * 100).to_i).to_s + "%."