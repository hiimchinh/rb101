VOWELS = %w(a e o u i)

def remove_vowels(array)
  array.map do |word|
    return_word = ''
    word.each_char do |char|
      return_word << char if !VOWELS.include?(char.downcase)
    end
    return_word
  end
end

# test cases
puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']