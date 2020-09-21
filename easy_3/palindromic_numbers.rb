def palindromic_number?(int)
  string = int.to_s
  string == string.reverse
end



# test cases
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
#cannot cover this case because integer input is not integer turns into octal format
puts palindromic_number?(0123210) == true
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true