lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join
total_character = text.length
text_without_spaces = text.gsub(/\s+/, '').length
number_of_words = text.scan(/\w+/).length
sentences_length = text.scan(/\.|\?|!/).length
paragraphs_length = text.scan(/\n\n/).length

puts "
Lines: #{line_count}
Total characters: #{total_character}
Character without spaces: #{text_without_spaces}
Number of words: #{number_of_words}
Sentences: #{sentences_length}
Paragraphs: #{paragraphs_length}
Average sentences per paragraph: #{sentences_length / paragraphs_length}
Average words per sentence: #{number_of_words / sentences_length}
"

stopWords = %w{the a by on for of are with just but and to the my in I has some}

words = text.scan(/\w+/)
keywords = words.select {|word| !stopWords.include?(word)}
puts "Percentage of important words in the text is " + (((keywords.length.to_f / words.length.to_f) * 100).to_i).to_s + "%."

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third+1)
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/}

puts ideal_sentences.join(". ")
