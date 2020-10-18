def double_consonants(str)
  repeated_str = ''
  str.chars.each do |char|
    if consonant?(char)
      repeated_str << char * 2
    else
      repeated_str << char
    end
  end
  repeated_str
end

def consonant?(char)
  char =~ /[bcdfghjklmnpqrstvwxyz]/i
end

#test cases
puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""