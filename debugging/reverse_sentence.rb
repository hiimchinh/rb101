def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

=begin
line 1 to 12 defines the reverse_sentence method with 1 parameter sentence.
Inside the method definition, 
we assigned local variable words to result of the split method invocation with the string ' ' as argument to the parameter sentence
and also initialized variable reversed_words and assigned it to an empty array.
From line 5 to 9, we assigned variable i to integer 0 then create a while loop with the condition i < words.length
Inside the while loop, we reassigned the reversed_words variable to result of the index i of array words plus the its current value
Then we iterate 
=end
p reverse_sentence('how are you doing')
# expected output: 'doing you are how'