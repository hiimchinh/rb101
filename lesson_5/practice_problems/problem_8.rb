hsh = {
  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']
}
VOWELS = ['a', 'u', 'e', 'i', 'o']
hsh.each do |number, value|
  value.each do |word|
    index = 0
    loop do
      char = word[index]
      puts char if VOWELS.include?(char.downcase)
      index += 1
      break if index == word.size
    end
  end
end