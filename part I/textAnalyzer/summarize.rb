text = %q{
Ruby is a great programming language. It is object oriented
and has many groovy features. Some people don't like it, but that's
not our problem! It's easy to learn. It's great. To learn more about Ruby,
visit the official website today.
}

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
#The strip method removes all whitespace from the start and end of the string
#and gsub replaces more than one whitespace with just one
#split is normal...splits the text into array sentences
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
#sort_by works on arrays and hashes!!!!
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third+1)
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/}

puts ideal_sentences.join(". ")