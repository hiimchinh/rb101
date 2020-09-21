def palindrome?(v)
  v == v.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true


# palindrome for array

puts palindrome?([1,2,3,2,1]) == true
puts palindrome?([1,'hi',4, 'goodbye', 'goodbye', 4,'hi',1]) == true
puts palindrome?([1, 4, 'hi', 'goodbye', 'goodbye', 4, 'hi', 1]) == false