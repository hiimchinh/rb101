def word_cap(string)
  word_arrs = string.split.map do |word|
    capitalize_word = ''
    word.chars.each_with_index do |char, index|
      if index == 0
        capitalize_word << char.upcase
      else
        capitalize_word << char.downcase
      end
    end
    capitalize_word
  end
  word_arrs.join(' ')
end


#test cases
puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'