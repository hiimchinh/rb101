def leading_substrings(string)
  arrs = []
  1.upto(string.size) do |char_position|
    arrs << string[0, char_position]
  end
  arrs
end

def substrings(string)
  result_arr = []
  
  0.upto(string.size - 1) do |char_position|
    substring = string.slice(char_position, string.size)
    result_arr.concat(leading_substrings(substring))
  end
  result_arr
end

def palindromes(string)
  palindromes_arr = []
  substrings(string).each do |substring|
    palindromes_arr << substring if palindrome?(substring)
  end
  palindromes_arr
end

def palindrome?(string)
  string.size > 1 && string == string.reverse
end

# test cases
puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
