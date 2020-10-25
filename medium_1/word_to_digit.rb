NUMBERS = %w(zero one two three four five six seven eight nine)


def word_to_digit(string)
  words = replace_word_to_number(string.split)
  words.join(' ')
end

def replace_word_to_number(array_of_words)
  array_of_words.map do |word|
    NUMBERS.each_with_index do |number, index|
      word.gsub!(number, index.to_s)
    end
    word
  end
end

#solution: 
# init an numbers array has 10 values from zero to nine
# 
# get an array of words, transform words array to another array with the conditoin as follow:
# return index of the word in numbers array if found index of that word else return the word 
#
# test case
puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'