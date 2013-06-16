lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
total_character = text.length
text_without_spaces = text.gsub(/\s+/, '').length
number_of_words = text.scan(/\w+/).length
sentences = text.scan(/\.|\?|!/).length
paragraphs = text.scan(/\n\n/).length

puts "
Lines: #{line_count}
Total characters: #{total_character}
Character without spaces: #{text_without_spaces}
Number of words: #{number_of_words}
Sentences: #{sentences}
Paragraphs: #{paragraphs}
Average sentences per paragraph: #{sentences / paragraphs}
Average words per sentence: #{number_of_words / sentences}
"