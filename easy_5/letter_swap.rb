def swap(string)
  words = string.split
  words.map! do |word|
    first_char = word[0]
    word[0] = word[-1]
    word[-1] = first_char
    word
  end
  words.join(' ')
end

#algorithm
# first, split the string to arrays of words
# 2. loop through the array of words
# 3. swap the first and the last character of the word
# 3.1 save the first character
# 3.2 

# 4. join the array with space

# test cases
puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'