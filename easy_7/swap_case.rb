UPCASES = ('A'..'Z').to_a
DOWNCASES = ('a'..'z').to_a

def swapcase(string)
  str_chars = string.chars.map do |char|
    if UPCASES.include?(char)
      char.downcase
    elsif DOWNCASES.include?(char)
      char.upcase
    else
      char
    end
  end
  str_chars.join('')
end

def swapcase_2(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

#test cases
puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

puts swapcase_2('CamelCase') == 'cAMELcASE'
puts swapcase_2('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'