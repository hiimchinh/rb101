def reverse_sentence(string)
  words = string.split
  reverse_words = []
  words.each do |word|
    reverse_words.prepend(word)
  end
  reverse_words.join(' ')
end

### test cases

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'