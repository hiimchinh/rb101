def neutralize(sentence)
  words = sentence.split(' ')
  index = 0
  loop do
    break if index == words.size
    word = words[index]
    words.delete(word) if negative?(word)
    index += 1
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# Reason why it fails to remove all of the negative words is because we are iterating the array while modifying it.
# We fix this by changing how to iterate the array
