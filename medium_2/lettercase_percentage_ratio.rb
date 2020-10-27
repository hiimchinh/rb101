require 'pry'

def letter_percentages(string)
  lowercase_num = string.count 'a-z'
  uppercase_num = string.count 'A-Z'
  lowercase_percentage = lowercase_num.to_f * 100 / string.size
  uppercase_percentage = uppercase_num.to_f * 100 / string.size
  neithercase_percentage = 100 - (lowercase_percentage + uppercase_percentage)
  {
    lowercase: lowercase_percentage,
    uppercase: uppercase_percentage,
    neither: neithercase_percentage
  }
end

# test cases
puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }