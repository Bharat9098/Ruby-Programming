def word_count(text)
  words = text.split
  words.tally
end

text = "hello world hello ruby"
puts word_count(text).inspect
# Output => {"hello"=>2, "world"=>1, "ruby"=>1}
