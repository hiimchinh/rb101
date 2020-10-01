words = "the flintstones rock"

def titlelize(string)
  array_of_words = string.split
  array_of_words.map! do |word|
    word.capitalize
  end
  array_of_words.join(' ')
end

puts titlelize(words)